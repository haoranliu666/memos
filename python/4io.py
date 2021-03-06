####### read

f = open('/Users/michael/test.txt', 'r')  #read utf-8
f = open('/Users/michael/test.jpg', 'rb') #read binary
f = open('/Users/michael/gbk.txt', 'r', encoding='gbk')

f.read()

f.close()


try:
    f = open('/path/to/file', 'r')
    print(f.read())
finally:
    if f:
        f.close()


with open('/path/to/file', 'r') as f:   #
    print(f.read())


####### write
f = open('/Users/michael/test.txt', 'w')
f = open('/Users/michael/test.txt', 'wb')

f.write('Hello, world!')
f.close()

with open('/Users/michael/test.txt', 'w') as f:
    f.write('Hello, world!')
    


####### pickle

import pickle

d = dict(name='Bob', age=20, score=88)
pickle.dumps(d)

f = open('dump.txt', 'wb')
pickle.dump(d, f) #pickling
f.close()

f = open('dump.txt', 'rb')
d = pickle.load(f) #unpickle
f.close()


####### json
###javascript object
#python           json
#dict             {}
#list             []
#str              "string"
#int,float        1234.56
#	True/False      true/false
#None             null

import json

d = dict(name='Bob', age=20, score=88)
json.dumps(d)

json_str = '{"age": 20, "score": 88, "name": "Bob"}'
json.loads(json_str)
















