# Knocks Creation页面脚手架
* [Contributors](#contributors)
* [Install guideline](#install-guideline)
* [Project screenshots](#project-screenshots)

## Contributors
* Sanic
* INSPINIA+ Admin Theme

## Install guideline:
* 需要python3环境
* 建议安装venv
* 需要执行 pip install -r requirements.txt
* 需要执行creation.sql
* 启动  python run.py

### 目录简介
```
knock_code:放置执行sql、发送email等方法，后期会转到knocks.service.utils
knocks:主代码目录
knocks.__init__.py:启动入口
knocks.models:主要放置数据库相关的代码
knocks.route:主要放置路由相关代码
knocks.static:主要放置静态文件
knocks.templates:主要放置html页面
config.py:配置文件
run.py:启动脚本

```

## Project screenshots
![sec](https://raw.githubusercontent.com/lyy8510a/knocks/master/screenshot/QQ20180420-1.png)
![sec](https://raw.githubusercontent.com/lyy8510a/knocks/master/screenshot/QQ20180420-2.png)
![sec](https://raw.githubusercontent.com/lyy8510a/knocks/master/screenshot/QQ20180420-3.png)
