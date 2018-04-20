#!/usr/bin/python
# -*- coding: UTF-8 -*-
"""
Created by liaoyangyang1 on 2018/4/19 上午10:49.
"""

import json
from knock_code.runSQL import localQueryByDict

db = 'creation'


def getTableVals(request,sql):
    data = localQueryByDict(request.app,db,sql)
    return data


def getTableCols(vals):
    cols = list(vals.keys())
    return cols

def getData(request,sql,table_name):
    dict = {}
    dict['values'] = getTableVals(request,sql)
    dict['cols'] = getTableCols(dict['values'][0])
    return dict
