#!/usr/bin/env python2
# -*- coding: utf-8 -*-
"""
Created on Sat Dec 16 17:03:38 2017

@author: wty
"""



import pandas as pd
import numpy as np

from sklearn.linear_model import LinearRegression

def strip(text):
    try:
        return text.strip()
    except AttributeError:
        return text


path1 = './trd_dalyr.csv'
path2 = './trd_dalyr_y.csv'
out = './result/trd_dalyr_y_result.csv'
header1 = ['Stkcd','Dretnd','category_roi','category_roi_exclude_self','market_roi','market_roi_exclude_self','year']
header2 = ['Stkcd','year','n','sum']
data = pd.read_csv(path1,names=header1,skiprows=1,low_memory=False,
                    dtype = {
                            'Stkcd':str,
                            'Dretnd':np.float,
                            'category_roi':np.float,
                            'category_roi_exclude_self':np.float,
                            'market_roi':np.float,
                            'market_roi_exclude_self':np.float,
                            'year':np.int
                            })

data_Y_i = pd.read_csv(path2,names=header2,skiprows=1,low_memory=False,
                       dtype = {
                            'Stkcd':str,
                            'year':np.int,
                            'n':np.int,
                            'sum':np.float
                            })

data.dropna(inplace=True)
data_Y_i.dropna(inplace=True)
data.loc[:,'Stkcd'] = data.loc[:,'Stkcd'].apply(strip)  
data_Y_i.loc[:,'Stkcd'] = data_Y_i.loc[:,'Stkcd'].apply(strip)    
    
    
years = list(sorted(set(data_Y_i.loc[:,'year'].tolist())))
stocks = list(sorted(set(data_Y_i.loc[:,'Stkcd'].tolist())))
LR = LinearRegression(n_jobs=-1)

count = 0
for stock in stocks:
#    print ("===========================")
#    print("In year %d"%year)
    d_stock = data.loc[data.loc[:,'Stkcd']==stock,:]
    data_Y_i_stock = data_Y_i.loc[data_Y_i.loc[:,'Stkcd']==stock,:]
    years = list(sorted(set(d_stock.loc[:,'year'].tolist())))
    
    for year in years:
        d_year_stock = d_stock.loc[data.loc[:,'year']==year,:]
        Y_i = data_Y_i_stock.loc[data_Y_i['year'] == year,:]
        Y = np.array(d_year_stock['Dretnd'])
        Y_2 = Y.transpose().dot(Y)
        
        
        #==========exclude self==============
        X = np.array(d_year_stock.loc[:,['category_roi_exclude_self','market_roi_exclude_self']])
        LR.fit(X,Y)
        Y_h = LR.predict(X)
        Y_h_2 = Y_h.transpose().dot(Y_h)
        
        data_Y_i.loc[Y_i.index,'R^2_exclude_self'] = Y_i.apply(lambda x: (Y_h_2 - x['n']*(x['sum']/x['n'])**2) / (Y_2 - x['n']*(x['sum']/x['n'])**2),axis=1)
        params = LR.coef_.tolist()
        params.insert(0,LR.intercept_)
        data_Y_i.loc[Y_i.index,'b_exclude_self'] = str(params)
        
        
        #==========do not exclude self==============
        X = np.array(d_year_stock.loc[:,['category_roi','market_roi']])
        LR.fit(X,Y)
        Y_h = LR.predict(X)
        Y_h_2 = Y_h.transpose().dot(Y_h)
        
        data_Y_i.loc[Y_i.index,'R^2'] = Y_i.apply(lambda x: (Y_h_2 - x['n']*(x['sum']/x['n'])**2) / (Y_2 - x['n']*(x['sum']/x['n'])**2),axis=1)
        params = LR.coef_.tolist()
        params.insert(0,LR.intercept_)
        data_Y_i.loc[Y_i.index,'b'] = str(params)
        
        count+=1
    
data_Y_i.to_csv(out)
    
    
    
    
    
    
    
    
    
    
    
    
