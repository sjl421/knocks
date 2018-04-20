#!/usr/bin/python
# -*- coding: UTF-8 -*-
"""
Created by liaoyangyang1 on 2017/11/8.
"""
__author__ = 'liaoyangyang'
__email__ = '51263921@qq.com'

import  sys

class Config(object):
    """Base config class."""
    # 版本
    API_VERSION = '1.0'
    # 项目名称
    API_TITLE = 'Knocks Creation'

    # 端口
    PORT = 10100

    BASE_DIR = sys.path[0]

    UPLOAD_FOLDER = BASE_DIR+'/knocks/upload'


class ProdConfig(Config):
    """Production config class."""
    # 是否开启调试
    DEBUG = False
    # 主机ip地址
    HOST = '0.0.0.0'

    # 数据库配置
    MYSQL_HOST = '120.77.179.66'
    MYSQL_PORT = 33945
    MYSQL_USER = 'lyy'
    MYSQL_PASS = 'Hrt@2017'



class DevConfig(Config):
    """Development config class."""
    # Open the DEBUG
    # 是否开启调试
    DEBUG = True
    # 主机ip地址
    HOST = 'localhost'

    # 数据库配置
    MYSQL_HOST = '120.77.179.66'
    MYSQL_PORT = 33945
    MYSQL_USER = 'lyy'
    MYSQL_PASS = 'Hrt@2017'

