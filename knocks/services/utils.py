#!/usr/bin/python
# -*- coding: UTF-8 -*-
"""
Created by liaoyangyang1 on 2018/4/17 下午3:23.
"""
__author__ = 'liaoyangyang'
__email__ = '51263921@qq.com'

from jinja2 import Environment, PackageLoader, select_autoescape
from sanic.response import json,text,html

# jinjia2 config
env = Environment(
    loader=PackageLoader('knocks.route', '../templates'),
    autoescape=select_autoescape(['html', 'xml', 'tpl']))

def template(tpl, **kwargs):
    template = env.get_template(tpl)
    return html(template.render(kwargs))

# 文件写内容
def save(file_path,content):
    with open(file_path, 'w') as f:
        f.write(content)

# 读取文件内容
def readFile(path):
    with open(path, 'r') as f:
        str = f.read()
    return str

# 文件追加内容
def addFile(file_path,content):
    with open(file_path, 'a') as f:
        f.write('\r\n')
        f.write(content)
        f.write('\r\n\r\n')

#  两个列表的交集
def diff(listA,listB):
    retA = [i for i in listA if i in listB]
    return retA