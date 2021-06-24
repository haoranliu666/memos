#https://docs.python.org/zh-cn/3/library/sys.html

import sys

n = sys.argv[1]
n = int(n)


#批量改名
import os

path = '/Users/haoranliu/Desktop/esginfo/xls'
file_list = os.listdir(path)

newpath = '/Users/haoranliu/Desktop/esginfo/xml'

for file_name in file_list:
    if file_name == ".DS_Store":
        continue
    oldname = path + os.sep + file_name
    newname = newpath + os.sep + file_name + '.xml'
    os.rename(oldname,newname)
