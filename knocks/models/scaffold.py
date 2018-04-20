#!/usr/bin/python
# -*- coding: UTF-8 -*-
"""
Created by liaoyangyang1 on 2018/4/19 下午10:53.
"""
import json,sys
from knock_code.runSQL import localQueryByDict
from knocks.services.utils import readFile,addFile

db = 'creation'


# 获取模版路径
def get_module_path(type,comefrom):
    path = sys.path[1]+'/knocks/static/module/{0}/datatable_{1}'.format(comefrom,type)
    return path
# 添加t_map项目信息
def set_project_map_info(request,table_name):
    sql_count = "select count(1) as qty from t_map where `table_name`='{0}' ".format(table_name)
    if(localQueryByDict(request.app, db, sql_count)[0]['qty'] == 0):
        sql = "insert into t_map(`table_name`,`status`) VALUES('{0}',1)".format(table_name)
        try:
            localQueryByDict(request.app, db, sql)
            result = 't_map项目数据添加成功'
        except Exception as e:
            result = e
    else:
        result = 'table exists'
    return result
# 创建新表
def create_new_table(request,table_name,cols):
    sql = "CREATE TABLE `{0}` (".format(table_name)
    sql += "`id` int(11) NOT NULL AUTO_INCREMENT,"
    for item in cols.split(','):
        sql += "`{0}` varchar(200) COLLATE utf8_bin DEFAULT NULL,".format(item)
    sql += 'PRIMARY KEY (`id`) ) ENGINE=InnoDB AUTO_INCREMENT=634 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;'
    try:
        localQueryByDict(request.app, db, sql)
        result= '{0}添加成功'.format(table_name)
    except Exception as e:
        result = e
    return  result
# 添加新页面
def create_new_html(comefrom,project):
    try:
        import os
        res = os.path.exists(sys.path[1]+'/knocks/templates/{0}/{1}.html'.format(comefrom,project))
        if not res:
            addFile(sys.path[1]+'/knocks/templates/{0}/{1}.html'.format(comefrom,project),readFile(get_module_path('html',comefrom)))
            result = '添加成功'
        else:
            result = '文件已存在'
    except Exception as e:
        result = e
    return result
# 添加route
def create_new_route(request,comefrom,table_name,project):
    sql_count = "select route from t_map where `table_name` = '{0}'".format(table_name)
    sql_update = "update t_map set route=1 where `table_name` = '{0}'".format(table_name)
    if localQueryByDict(request.app, db, sql_count)[0]['route'] != 1:
        try:
            str = readFile(get_module_path('url',comefrom)).replace('$project',project).replace('$table_name',table_name)
            table_urls_path = sys.path[1] + '/knocks/route/table_urls.py'
            addFile(table_urls_path,str)
            localQueryByDict(request.app, db, sql_update)
            result = '添加路由成功'
        except Exception as e:
            result = e
    else:
        result = '路由已存在'
    return result
# 添加新项目
def add_project(request,table_name,comefrom,cols):
    # 创建新项目包含 1、t_map  2、创建新表 3、创建新页面 4、创建路由
    dict = {}
    project = '_'.join(table_name.split('_')[1:])
    # 添加t_map
    dict['map'] = set_project_map_info(request,table_name)
    # 创建新表
    dict['table'] = create_new_table(request,table_name,cols)
    # 创建新页面
    dict['html'] = create_new_html(comefrom,project)
    # 创建路由
    dict['route'] = create_new_route(request,comefrom,table_name,project)
    # 页面url
    dict['url']  = request.scheme + '://' + request.host + "/" +comefrom + "/" + project
    return dict
