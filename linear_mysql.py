#!/usr/bin/env python2
# -*- coding: utf-8 -*-
"""
Created on Thu Dec 21 10:26:24 2017

@author: wty
"""
import pandas as pd
import numpy as np
import multiprocessing
import random
from sqlalchemy import create_engine
from sklearn.linear_model import LinearRegression

def strip(text):
    try:
        return text.strip()
    except AttributeError:
        return text

def pull_data(name):
    db = create_engine('mysql+pymysql://trade:trade@192.168.233.1:3306/trade?charset=utf8')
    conn = db.connect()
    colums_origin_data = 'Stkcd,roi,category_roi,category_roi_exclude_self,market_roi,market_roi_exclude_self,`year`'
    #colums_origin_data = '*'
    table_origin_data = name
    sql_origin_data = 'select {} from {};'.format(colums_origin_data,table_origin_data)
    origin_data = pd.read_sql(sql_origin_data, con=conn)
    
    colums_origin_data_y = '*'
    table_origin_data_y = name+'_y'
    sql_origin_data_y = 'select {} from {};'.format(colums_origin_data_y,table_origin_data_y)
    origin_data_y = pd.read_sql(sql_origin_data_y, con=conn)
    
    origin_data.dropna(inplace=True)
    origin_data_y.dropna(inplace=True)
    origin_data.loc[:,'Stkcd'] = origin_data.loc[:,'Stkcd'].apply(strip)  
    origin_data_y.loc[:,'Stkcd'] = origin_data_y.loc[:,'Stkcd'].apply(strip)   
    
    return origin_data,origin_data_y
    
def compute_r(origin_data,origin_data_y,log_interval=5000):
    #years = list(sorted(set(origin_data_y.loc[:,'year'].tolist())))
    stocks = list(sorted(set(origin_data_y.loc[:,'Stkcd'].tolist())))
    LR = LinearRegression(n_jobs=-1)
    count = 0
    for stock in stocks:
    #    print ("===========================")
    #    print("In year %d"%year)
        d_stock = origin_data.loc[origin_data.loc[:,'Stkcd']==stock,:]
        data_Y_i_stock = origin_data_y.loc[origin_data_y.loc[:,'Stkcd']==stock,:]
        years = list(sorted(set(d_stock.loc[:,'year'].tolist())))
        
        for year in years:
            d_year_stock = d_stock.loc[origin_data.loc[:,'year']==year,:]
            Y_i = data_Y_i_stock.loc[origin_data_y['year'] == year,:]
            Y = np.array(d_year_stock['roi'])
            Y_2 = Y.transpose().dot(Y)
            
            
            #==========exclude self==============
            X = np.array(d_year_stock.loc[:,['category_roi_exclude_self','market_roi_exclude_self']])
            LR.fit(X,Y)
            Y_h = LR.predict(X)
            Y_h_2 = Y_h.transpose().dot(Y_h)
            
            origin_data_y.loc[Y_i.index,'R^2_exclude_self'] = Y_i.apply(lambda x: (Y_h_2 - x['n']*(x['sum']/x['n'])**2) / (Y_2 - x['n']*(x['sum']/x['n'])**2),axis=1)
            params = LR.coef_.tolist()
            params.insert(0,LR.intercept_)
            origin_data_y.loc[Y_i.index,'b_exclude_self'] = str(params)
            
            
            #==========do not exclude self==============
            X = np.array(d_year_stock.loc[:,['category_roi','market_roi']])
            LR.fit(X,Y)
            Y_h = LR.predict(X)
            Y_h_2 = Y_h.transpose().dot(Y_h)
            
            origin_data_y.loc[Y_i.index,'R^2'] = Y_i.apply(lambda x: (Y_h_2 - x['n']*(x['sum']/x['n'])**2) / (Y_2 - x['n']*(x['sum']/x['n'])**2),axis=1)
            params = LR.coef_.tolist()
            params.insert(0,LR.intercept_)
            origin_data_y.loc[Y_i.index,'b'] = str(params)
            
            count+=1
            
            if count % log_interval == 0:
                print('In stock [{}], in year [{}], {} records have been done'\
                      .format(stock,year,count))
    return origin_data_y
    
def main_job(names):
    for name in names:
        origin_data,origin_data_y = pull_data(name)
        print('dataset [{}] has been pull, shape is {} and {}'\
              .format(name,str(origin_data.shape),str(origin_data_y.shape)))
        
        origin_data_y = compute_r(origin_data,origin_data_y) 
        path = './results/'+name+'_result.csv'
        origin_data_y.to_csv(path)
        print('dataset [{}] has been saved in path [{}]'.format(name,path))
   
def partition(lst, n):
    random.shuffle(lst) 
    division = len(lst) / n
    return [lst[round(division * i):round(division * (i + 1))] for i in range(n)]   
    


names = ['trd_dalyr_withbonus_category_1_adjusted_nost',
         'trd_dalyr_withbonus_category_1_adjusted_st',
         'trd_dalyr_withbonus_category_1_noadjusted_nost',
         'trd_dalyr_withbonus_category_1_noadjusted_st',
         'trd_dalyr_withbonus_category_2_adjusted_nost',
         'trd_dalyr_withbonus_category_2_adjusted_st',
         'trd_dalyr_withbonus_category_2_noadjusted_nost',
         'trd_dalyr_withbonus_category_2_noadjusted_st',
         'trd_dalyr_withbonus_category_all1_adjusted',
         'trd_dalyr_withbonus_category_all1_noadjusted',
         'trd_dalyr_withbonus_category_all2_adjusted',
         'trd_dalyr_withbonus_category_all2_noadjusted',
         'trd_dalyr_withoutbonus_category_1_adjusted_nost',
         'trd_dalyr_withoutbonus_category_1_adjusted_st',
         'trd_dalyr_withoutbonus_category_1_noadjusted_nost',
         'trd_dalyr_withoutbonus_category_1_noadjusted_st',
         'trd_dalyr_withoutbonus_category_2_adjusted_nost',
         'trd_dalyr_withoutbonus_category_2_adjusted_st',
         'trd_dalyr_withoutbonus_category_2_noadjusted_nost',
         'trd_dalyr_withoutbonus_category_2_noadjusted_st',
         'trd_dalyr_withoutbonus_category_all1_adjusted',
         'trd_dalyr_withoutbonus_category_all1_noadjusted',
         'trd_dalyr_withoutbonus_category_all2_adjusted',
         'trd_dalyr_withoutbonus_category_all2_noadjusted',
         ]
num_process = 2
names_partition = partition(names,num_process)
processes = []

for i in range(num_process):
        p = multiprocessing.Process(target=main_job,args=(names_partition[i],))
        p.daemon = True
        p.start()
        processes.append(p)

for p in processes:
    p.join()
print ('main finished')






