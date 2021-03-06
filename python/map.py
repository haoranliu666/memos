### map
# map(f, x)
# literally map in math, f: x -> y

x = [-1, 0, 1, 2]

y = list(map(abs, x))
print(y)


### reduce
# reduce(f, x)
# x = (x_1, x_2, ... , x_k)
# reduce(f, x) = f(...f(f(x_1, x_2), x_3)...x_k))...)

from functools import reduce

def sum(x, y):
    return x + y

x = [1, 2, 3, 4]

reduce(sum, x)


### filter

def is_odd(n):
    return n % 2

x = [1, 2, 3, 4]

y = list(filter(is_odd, x))
print(y)


### sorted

sorted([1, 5, 3])
sorted("asddfer")
#key
sorted([36, 5, -12, 9, -21], key = abs)
sorted(['bob', 'about', 'Zoo', 'Credit'], key=str.lower)
#reverse
sorted([1, 5, 3], reverse = True)

### retrun a function

def lazy_sum(*args):

    def sum():
        ax = 0
        for n in args:
            ax = ax + n
        return ax
    return sum

x = [1, 2, 3, 4]
a = lazy_sum(x)
b = lazy_sum(x)
a
b
a==b


### lambda function

# anonymous function
list(map(lambda x: x * x, [1, 2, 3, 4, 5, 6, 7, 8, 9]))

# return function
def build(x, y):
    return lambda: x * x + y * y

### __name__

a = print
a.__name__



### decorator

















