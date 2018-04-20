#!/usr/bin/python
# -*- coding: UTF-8 -*-
"""
Created by liaoyangyang1 on 2018/4/19 下午4:50.
"""

import json,sys
from knock_code.runSQL import localQueryByDict
from knocks.services.utils import readFile,addFile

db = 'creation'
api_urls_path = sys.path[1]+'/knocks/route/api_urls.py'


# 获取api模版路径
def get_module_path(type,comefrom):
    path = sys.path[1]+'/knocks/static/module/{0}/api_{1}'.format(comefrom,type)
    return path
# 查看restapi是否存在
def check_api_type_ifexists(request,type,table_name):
    result = []
    if(type == 'all'):
        sql = "select `get`,`post`,`put`,`delete` from t_map where table_name='{0}'".format(table_name)
        res = localQueryByDict(request.app,db,sql)[0]
        for item in  res.keys():
            if(res[item] == None or res[item] == ''):
                result.append(item)
    else:
        sql = "select `{1}` from t_map where table_name='{0}'".format(table_name,type)
        if(localQueryByDict(request.app, db, sql)[0][type] == None or localQueryByDict(request.app, db, sql)[0][type] == ''):
            result.append(type)
    return result
# 补充t_map里面该项目的restapi 已有信息
def set_api_type_info(request,table_name,type,url):
    sql = "update t_map set `{0}`='{1}' where TABLE_NAME='{2}'".format(type,url,table_name)
    return localQueryByDict(request.app, db, sql)
# 添加rest api
def add_api(request,type,table_name,comefrom):
    result = []
    can_add_api_type = check_api_type_ifexists(request,type,table_name)
    project = '_'.join(table_name.split('_')[1:])
    for item in can_add_api_type:
        dict = {}
        path = get_module_path(item,comefrom)
        str = readFile(path).replace('$project',project).replace('$table_name',table_name).replace('$comefrom',comefrom)
        url = '/api/{0}/{1}/{2}'.format(comefrom,project,item)
        try:
            addFile(api_urls_path,str)
            set_api_type_info(request, table_name, item, url)
            dict[item]='添加成功'
        except Exception as e:
            dict[item] = '添加失败'
        result.append(dict)
    return result

