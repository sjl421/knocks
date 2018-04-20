#!/usr/bin/python
# -*- coding: UTF-8 -*-
"""
Created by liaoyangyang1 on 2018/4/17 下午5:55.
"""
import xlrd
from knock_code.runSQL import localQueryByDict


def resolve_excel(file):
    data = xlrd.open_workbook(file_contents=file,encoding_override="utf-8")
    table = data.sheets()[0]
    data_list = []
    data_list.extend(table.row_values(0))
    return (data_list)


def checkproject(request,project):
    sql = "select count(1) as qty from t_map where table_name = '{0}'".format('t_'+project)
    count = localQueryByDict(request.app,'creation',sql)[0]['qty']
    return count

def import_excel(request,file,table_name):
    data = xlrd.open_workbook(file_contents=file, encoding_override="utf-8")
    table = data.sheets()[0]
    nrows = table.nrows
    list  = []
    for i in range(nrows):
        sql = "insert into {0}({1}) VALUES ('{2}');".format(table_name,','.join(table.row_values(0)),"','".join(table.row_values(i)))
        try:
            localQueryByDict(request.app, 'creation', sql)
            result = {'line:{0}'.format(i):'success'}
        except Exception as e:
            result = {'line:{0}'.format(i): e}
        list.append(result)
    return list
