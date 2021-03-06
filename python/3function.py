def my_abs(x):
    if x >= 0:
        return x
    else:
        return -x



def nop():
    pass



import math

def move(x, y, step, angle=0):
    nx = x + step * math.cos(angle)
    ny = y - step * math.sin(angle)
    return nx, ny  # a tuple

r = move(100, 100, 60, math.pi / 6)
print(r)

x, y = move(100, 100, 60, math.pi / 6)
print(x, y)






def power(x, n=2):
    s = 1
    while n > 0:
        n = n - 1
        s = s * x
    return s
    
    
#可变参数
#关键字参数
#参数组合
#递归














