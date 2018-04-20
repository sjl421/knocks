#!/usr/bin/python
# -*- coding: UTF-8 -*-
"""
Created by liaoyangyang1 on 2018/3/27 下午1:31.
"""
__author__ = 'liaoyangyang'
__email__ = '51263921@qq.com'

from  knocks import app



if __name__ == '__main__':
    app.run(host=app.config.HOST,port=app.config.PORT,debug=True,workers=4)