'''
Hi
'''

exit()

help(xxx)
dir(xxx)
type(xxx)
vars(xxx)

import re #regualr expression
pip install numpy

####### string 
name = input()
print("Hello", name, "and welcome!")

len("a short phrase")

'Hi, %s, you have $%d.' % ('Michael', 1000000)

a = 'abc'
a.replace('a', 'A')


####### list

classmates = ['Michael', 'Bob', 'Tracy']
len(classmates)
classmates[0]
classmates.append('Adam')
classmates.insert(1, 'Jack')
classmates.pop()
classmates.pop(1)
classmates[1] = 'Sarah'
classamtes.sort()

s = ['python', 'java', ['asp', 'php'], 'scheme']
s[2][1]


####### tuple

classmates = ('Michael', 'Bob', 'Tracy')

####### if

a = 100
if a >= 0:
    print(a)
elif a == 0:
    print(0)
else:
    print(-a)

####### for

names = ['Michael', 'Bob', 'Tracy']
for name in names:
    print(name)
    
list(range(5))    

sum = 0
for x in range(101):
    sum = sum + x
print(sum)

break
continue

####### dict

d = {'Michael': 95, 'Bob': 75, 'Tracy': 85}
d['Michael']
d['Adam'] = 67
'Thomas' in d
d.pop('Bob')
del d['Michael']

for name, age in d:
    print(name)
    print(age)

fips_iso = pd.read_excel(path + 'fips_iso.xlsx')
fips = list(fips_iso['fips'])
iso = list(fips_iso['iso'])
fips_iso_dict = {}
for i in range(0, len(fips)):
    fips_iso_dict[fips[i]] = iso[i]

reverse_word_index = dict([(value, key) for (key, value) in word_index.items()])

####### set

s = set([1, 2, 3])
s = set([1, 1, 2, 2, 3, 3])
s.add(4)
s.remove(4)

s1 = set([1, 2, 3])
s2 = set([2, 3, 4])
s1 & s2
s1 | s2


####### some functions
abs(100)
max(1,2)
int('123')
float('12.34')
str(1.23)
str(100)
bool(1)
bool('')


print('%.2f' % 1.2345)

# yyyyy is a class
dir(yyyyy) # check all possible properties of yyyyy


type(yyyyy)
vars(yyyyy)
help(yyyyy)

'★'.encode('ascii', 'backslashreplace')  # return b'\\u2605', utf-8 code

#vscode:
#ctrl c    强制停止运行代码
#mac:
#ctrl z


maxval = a if a > b else b

sum([a[i]*b[i] for i in range(len(a))])

{s[0]:s[1] for s in portfolio }

try:
    pass
except:
    print('error')






####### iteration

c = ["Mark", "Duck", "Hey"]
for name in c:
    print(name)
    
d = {'a': 1, 'b': 2, 'c': 3}
for key in d:
    print(key)

for ch in 'ABC':
    print(ch)


####### list comprehensions

list(range(1, 11))

[x * x for x in range(1, 11)]

[x * x for x in range(1, 11) if x % 2 == 0]

[m + n for m in 'ABC' for n in 'XYZ']  # double loop



####### generator

g = (x * x for x in range(10))

next(g)

for n in g:
    print(n)

#fibonacci
def fib(max):
    n, a, b = 0, 0, 1
    while n < max:
        yield b
        a, b = b, a + b
        n = n + 1
    return 'done'
f=fib(10)
next(f)

#loop with both index and content:
for i, t in enumerate( ['Haoran', 'Liu', 'Macbook']):
    print(i)
    print(i)
    
#string
import string
string.digits
string.punctuation
string.ascii letters
