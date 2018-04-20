#!/usr/bin/python
# -*- coding: UTF-8 -*-
"""
Created by liaoyangyang1 on 2018/4/19 上午10:37.
"""

from sanic.blueprints import Blueprint
from knocks.services.utils import template
from sanic.response import text,json
from knocks.models.search import getData


blueprint = Blueprint('search', '/search')

@blueprint.get("/sql", strict_slashes=True)
def search_sql(request):
    sql = request.args['sql'][0]
    table_name = request.args['table_name'][0]
    content = getData(request,sql,table_name)
    return json({"content":content,"table_name":table_name})