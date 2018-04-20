#!/usr/bin/python
# -*- coding: UTF-8 -*-
"""
Created by liaoyangyang1 on 2018/4/18 下午4:50.
"""

from sanic.blueprints import Blueprint
from knocks.services.utils import template
from knocks.models.datatable import getData
import time

blueprint = Blueprint('datatable', '/datatable')

@blueprint.get("/demo", strict_slashes=True)
def datatable_demo(request):
    table_name = 't_table_demo'
    content = getData(request,table_name)
    base_url = request.scheme+'://'+request.host
    return  template('/datatable/template_table.html', title='demo',content=content,table_name=table_name,base_url=base_url)\

