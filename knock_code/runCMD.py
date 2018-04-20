#!/usr/bin/python
# -*- coding: UTF-8 -*-
"""
Created by liaoyangyang1 on 2018/1/24 上午11:08.
"""

import paramiko,multiprocessing


def exec_script(cmd):
    p = multiprocessing.Process(name='sh_Woker', target=woker, args=(cmd,))
    p.start()
    p.join()

def woker(cmd):
    # 执行脚本，返回状态码和输出
    import subprocess
    # 坑1  nohub
    # 坑2 readline  不能 read
    p = subprocess.Popen(cmd, shell=True, close_fds=True, stdout=subprocess.PIPE)
    while True:
        lines = p.stdout.readline()
        if not lines:
            break
        print(lines)





def remoteMultiConn(host,port,username,password,cmd):
    p = multiprocessing.Process(name='sh_Woker', target=conn, args=(host,port,username,password,cmd))
    p.start()


def remoteConn(host,port,username,password,cmd):
    s = paramiko.SSHClient()
    s.load_system_host_keys()
    s.set_missing_host_key_policy(paramiko.AutoAddPolicy())
    s.connect(hostname=host, port=int(port), username=username, password=password)
    stdin, stdout, stderr = s.exec_command(cmd)
    result = stdout.read()
    s.close()
    return result
