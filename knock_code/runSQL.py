#!/usr/bin/python
# -*- coding: UTF-8 -*-
"""
Created by liaoyangyang1 on 2018/3/8 下午2:08.
"""

try:
    import MySQLdb
except ImportError:
    import pymysql as MySQLdb


def remoteQuery(HOST="", PORT="", USER="", PASSWD="", DB="", query_sql=""):
    s_conn = MySQLdb.connect(host=HOST, port=int(PORT), user=USER, passwd=PASSWD, db=DB, charset="utf8")
    s_cur = s_conn.cursor()
    num = s_cur.execute(query_sql)
    s_conn.commit()
    info = s_cur.fetchmany(num)
    s_cur.close()
    s_conn.close()
    return list(info)


def localQueryByDict(app,db,query_sql=""):
    s_conn = MySQLdb.connect(host= app.config["MYSQL_HOST"], port=int(app.config["MYSQL_PORT"]), user=app.config["MYSQL_USER"], passwd=app.config["MYSQL_PASS"], db=db, charset="utf8")
    s_cur = s_conn.cursor(MySQLdb.cursors.DictCursor)#返回字典结构
    num = s_cur.execute(query_sql)
    s_conn.commit()
    info = s_cur.fetchmany(num)
    s_cur.close()
    s_conn.close()
    return (info)

def remoteQueryByDict(HOST="", PORT="", USER="", PASSWD="", DB="", query_sql=""):
    s_conn = MySQLdb.connect(host=HOST, port=int(PORT), user=USER, passwd=PASSWD, db=DB, charset="utf8")
    s_cur = s_conn.cursor(MySQLdb.cursors.DictCursor)
    num = s_cur.execute(query_sql)
    s_conn.commit()
    info = s_cur.fetchmany(num)
    s_cur.close()
    s_conn.close()
    return list(info)

if __name__ == '__main__':
     print(localQuery('walle','select * from project'))