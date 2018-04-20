#!/usr/bin/python
# -*- coding: UTF-8 -*-
"""
Created by liaoyangyang1 on 2018/4/18 下午4:58.
"""
import json
from knock_code.runSQL import localQueryByDict
from knocks.services.utils import diff

db = 'creation'

def createtable():
    pass

def getAPIinfo(request,table_name):
    sql = "select `get`,`post`,`put`,`delete` from t_map where table_name='{0}'".format(table_name)
    data = localQueryByDict(request.app, db, sql)[0]
    dict = {}
    for col in (data.keys()):
        if(data[col] != None and data[col] != ''):
            dict[col] = data[col]
    return dict

# 获取表内容
def getTableVals(request,table_name,where=None):
    sql = "select * from  {0}".format(table_name)
    data = localQueryByDict(request.app,db,sql)
    return data
# 获取表字段
def getTableCols(request,table_name):
    sql = "SHOW FULL COLUMNS FROM {0}.{1}".format(db,table_name)
    data = localQueryByDict(request.app, db, sql)
    cols = []
    for line in data:
        cols.append(line['Field'])
    return cols
# 获取全部内容
def getData(request,table_name):
    dict = {}
    dict['values'] = getTableVals(request,table_name)
    dict['cols'] = getTableCols(request,table_name)
    dict['apis'] = getAPIinfo(request,table_name)
    return dict
# 添加内容
def setData(request,table_name,formdata):
    listA = getTableCols(request,table_name)
    listB = formdata.keys()
    cols = diff(listA,listB)
    vals = []
    for item in cols:
        vals.append(formdata[item][0])

    sql = "insert into {0}({1}) VALUES('{2}')".format(table_name,','.join(cols),"','".join(vals))
    try:
        localQueryByDict(request.app, db, sql)
        result = '添加成功'
    except Exception as e:
        result = '添加失败'

    return result
# 修改内容
def updateData(request,table_name,formdata):
    listA = getTableCols(request,table_name)
    listB = formdata.keys()
    cols = diff(listA,listB)
    str = ''
    print(cols[-1])
    for item in cols:
        if (item != 'id' and item != cols[-1]):
            str += "{0}='{1}',".format(item,formdata[item][0])
        elif(item == cols[-1]):
            str += "{0}='{1}'".format(item, formdata[item][0])

    sql = "update {0} set {1} where id={2}".format(table_name,str,formdata['id'][0])
    try:
        localQueryByDict(request.app, db, sql)
        result = '修改成功'
    except Exception as e:
        result = '修改失败'

    return result
# 删除内容
def deleteData(request,table_name,id):
    sql = "delete from {0} where id = {1}".format(table_name,id)
    try:
        localQueryByDict(request.app, db, sql)
        result = '修改成功'
    except Exception as e:
        result = '修改失败'

    return  result