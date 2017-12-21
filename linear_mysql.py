#!/usr/bin/env python2
# -*- coding: utf-8 -*-
"""
Created on Thu Dec 21 10:26:24 2017

@author: wty
"""

from sqlalchemy import create_engine
db = create_engine('mysql+mysqldb://root:root@localhost:3306/crm_new?charset=utf8')
pd.read_sql('',db)