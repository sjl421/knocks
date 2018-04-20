#!/usr/bin/python
# -*- coding: UTF-8 -*-
"""
Created by liaoyangyang1 on 2018/3/27 下午1:32.
"""
__author__ = 'liaoyangyang'
__email__ = '51263921@qq.com'



from knocks.route.scaffold_urls import blueprint as scaffold_blueprint
from knocks.route.table_urls import blueprint as table_blueprint
from knocks.route.search_urls import blueprint as search_blueprint
from knocks.route.api_urls import blueprint as api_blueprint
from knocks.route.web_urls import blueprint as web_blueprint
from sanic.exceptions import NotFound
from sanic_token_auth import SanicTokenAuth
from sanic.response import text,html
from config import DevConfig
from sanic import Sanic

app = Sanic()
# token
auth = SanicTokenAuth(app, secret_key='utee3Quaaxohh1Oo', header='X-My-App-Auth-Token')
app.config.from_object(DevConfig)
# curl http://127.0.0.1:8000/ -H "X-My-App-Auth-Token: utee3Quaaxohh1Oo"
app.static('/static',DevConfig.BASE_DIR+'/knocks/static')



app.blueprint(web_blueprint)
app.blueprint(scaffold_blueprint)
app.blueprint(table_blueprint)
app.blueprint(api_blueprint)
app.blueprint(search_blueprint)






@app.exception(NotFound)
def ignore_404s(request, exception):
    return text("你想打开的页面被我吃了: {}".format(request.url))

@app.middleware('request')
async def print_on_request(request):
    pass
    # print(request.token)
    # print("=============I print when a request is received by the server=============")
@app.middleware('response')
async def print_on_response(request, response):
    pass
    # response.headers["x-xss-protection"] = "1; mode=block"
    # print("=============I print when a response is returned by the server=============")





