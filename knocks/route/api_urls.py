#!/usr/bin/python
# -*- coding: UTF-8 -*-
"""
Created by liaoyangyang1 on 2018/3/27 下午1:38.
"""

from sanic.blueprints import Blueprint
from sanic.response import json,text
from knocks.models.api import add_api
from knocks.models.search import getData


__author__ = 'liaoyangyang'
__email__ = '51263921@qq.com'

blueprint = Blueprint('api', '/api')

@blueprint.post("/")
def api_add_restapi(request):
    type = request.form.get('type')
    comefrom = request.form.get('comefrom')
    table_name = request.form.get('table_name')
    add_api(request,type,table_name,comefrom)
    return text('增量更新成功,共项')



@blueprint.get('/datatable/table_demo/get')
def api_table_demo_get(request):
    table_name ='t_table_demo'
    sql = 'select * from t_table_demo ;'
    content = getData(request,sql,table_name)
    return json({'content':content,'table_name':table_name})


@blueprint.post('/datatable/table_demo/post')
def api_table_demo_post(request):
    table_name = 't_table_demo'
    from knocks.models.datatable import setData
    content = setData(request,table_name,request.form)
    return json({'content': content, 'table_name': table_name})


@blueprint.put('/datatable/table_demo/put')
def api_table_demo_put(request):
    table_name = 't_table_demo'
    from knocks.models.datatable import updateData
    if('id' in request.args):
        content = updateData(request,table_name,request.args)
    else:
        content = '缺少主键id字段'
    return json({'content': content, 'table_name': table_name})

@blueprint.delete('/datatable/table_demo/delete')
def api_table_demo_delete(request):
    table_name = 't_table_demo'
    from knocks.models.datatable import deleteData
    if('id' in request.args):
        content = deleteData(request,table_name,request.args['id'][0])
    else:
        content = '缺少主键id字段'
    return json({'content': content, 'table_name': table_name})


