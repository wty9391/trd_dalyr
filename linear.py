#!/usr/bin/env python2
# -*- coding: utf-8 -*-
"""
Created on Fri Dec 15 13:34:49 2017

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
out = './result/'
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
    
    
years = list(sorted(set(data.loc[:,'year'].tolist())))
LR = LinearRegression(n_jobs=-1)



for year in years:
    print ("===========================")
    print("In year %d"%year)
    d = data.loc[data.loc[:,'year']==year,:]
    Y = np.array(d['Dretnd'])
    Y_sum = np.sum(Y)
    Y_2 = Y.transpose().dot(Y)

    Y_i = data_Y_i.loc[data_Y_i.loc[:,'year']==year,:]
    
    
    X = np.array(d.loc[:,['category_roi_exclude_self','market_roi_exclude_self']])
    LR.fit(X,Y)
    Y_h = LR.predict(X)
    Y_h_2 = Y_h.transpose().dot(Y_h)
    
#    for index, row in Y_i.iterrows():
        
    Y_i.loc[:,'R^2'] = Y_i.apply(lambda x: (Y_h_2 - x['n']*(x['sum']/x['n'])**2) / (Y_2 - x['n']*(x['sum']/x['n'])**2),axis=1)
    d.loc[:,'y_h'] = Y_h
    y_h_mean = d.groupby('Stkcd')['y_h'].mean().to_dict()
    d.loc[:,'y_h_var'] = d.apply(lambda x:(x['y_h']-y_h_mean[x['Stkcd']])**2,axis=1)
    d.loc[:,'y_h_err'] = (Y - Y_h)**2
    
    Y_i.loc[:,'y_h_mean'] = pd.Series(d.groupby('Stkcd')['y_h'].mean())
    Y_i.loc[:,'y_h_var'] = pd.Series(d.groupby('Stkcd')['y_h_var'].sum(), index=Y_i.index)
    Y_i.loc[:,'y_h_err'] = pd.Series(d.groupby('Stkcd')['y_h_err'].sum(), index=Y_i.index)
    Y_i.loc[:,'R^2_new'] = Y_i.apply(lambda x:x['y_h_var']/(x['y_h_var']+x['y_h_err']),axis=1)
    
    
    Y_i.to_csv(out+str(year)+'_no_exclude.csv')
    
    print('Not exclude self')
    print('The fited parameter is:',LR.intercept_,LR.coef_)
    print(r'Number of record is %d, Number of stock is %d, Sum of $Y^2$ is %.2f, Sum of prediction $\hat{Y^2}$ is %.2f'\
          %(len(Y),len(Y_i),Y_2,Y_h_2))
    print(' ')
    
    X = np.array(d.loc[:,['category_roi','market_roi']])
    
    

