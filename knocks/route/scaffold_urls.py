#!/usr/bin/python
# -*- coding: UTF-8 -*-
"""
Created by liaoyangyang1 on 2018/4/17 下午2:21.
"""
__author__ = 'liaoyangyang'
__email__ = '51263921@qq.com'

from sanic.blueprints import Blueprint
from knocks.services.utils import template
from knocks.services.resolve import resolve_excel,checkproject,import_excel
from sanic.response import text,json
from knocks.models.scaffold import add_project
blueprint = Blueprint('scaffold', '/scaffold')


# -----------------------------------------------------#
# 功能类型：表格类页面脚手架
# coder： liaoyangyang1
# -----------------------------------------------------#

# 表格类页面脚手架 start


@blueprint.get("/index", strict_slashes=True)
def scaffold_index(request):
    return  template('/scaffold/index.html', title='scaffold')

@blueprint.post("/index", strict_slashes=True)
def scaffold_resolve_excel(request):
    dict  = {}
    project = request.form['projectname'][0]
    if(checkproject(request,project) == 0):
        dict['project'] = project
        try:
            file = request.files.get('importPrivateHost')
            if ('.xls' in file.name) or ('.xlsx' in file.name):
                cols = resolve_excel(file.body)
                dict['cols'] = cols
            else:
                dict['err'] = '文件类型有误'
        except Exception as e:
            dict['err'] = '没有上传文件'
    else:
        dict['err'] = '该项目名已存在'

    return json(dict)

@blueprint.post("/excute", strict_slashes=True)
def scaffold_excute(request):
    cols = request.form.get('cols')
    table_name = request.form.get('table_name')
    comefrom = request.form.get('comefrom')
    result = add_project(request,table_name,comefrom,cols)
    return text(result)

@blueprint.post("/importexcel", strict_slashes=True)
def scaffold_importexcel(request):
    dict = {}
    try:
        file = request.files.get('importPrivateHost')
        table_name = request.form.get('table_name')
        if ('.xls' in file.name) or ('.xlsx' in file.name):
            dict['result'] = import_excel(request,file.body,table_name)
        else:
            dict['err'] = '文件类型有误'
    except Exception as e:
        dict['err'] = '没有上传文件'
    return text(dict)
# 表格类页面脚手架 end



