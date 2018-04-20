#!/usr/bin/python
# -*- coding: UTF-8 -*-
"""
Created by liaoyangyang1 on 2018/4/20 下午1:51.
"""

from sanic.blueprints import Blueprint
from sanic.response import redirect

blueprint = Blueprint('website', '/')

@blueprint.get("/", strict_slashes=True)
def index(request):
    return redirect('/scaffold/index')