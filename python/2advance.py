####### slice

L = ['Michael', 'Sarah', 'Tracy', 'Bob', 'Jack']

[L[0], L[1], L[2]]

r = []
n = 3
for i in range(n):
    r.append(L[i])
    
L[0:3]  #0 1 2


L = list(range(100))
L[:10]
L[-10:]
L[10:20]
L[0:10:2]
L[:10:2]
L[::5]
L[:]

(0, 1, 2, 3, 4, 5)[:3]
'ABCDEFG'[:3]



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


