def func(x, items = None): 
    if items is None:
        items = []
    items.append(x)
    return items


###Variadic Arguments (to a list)
def product(first, *args): 
    result = first
    for x in args:
        result = result * x
    return result

product(2)
product(2, 3)
product(2, 3, 4, 5)


###Variadic Keyword Arguments (to a dict)
def func(data, **parms):
    print(parms)

func(1, fgcolor='black', bgcolor='white', border=1, borderstyle='grooved', cellpadding=10, width=400)


###Functions Accepting All Inputs
def func(var, *args, **kwargs):
    print(var)
    print(args)
    print(kwargs)

func('haha', 'baba', 'yaha', a = 'mama', z = 'didi')


###keyword only arguments
def read_data(filename, *, debug=False):
    print(filename)
    if debug == True:
        print(filename)

read_data('aaa')
read_data('aaa', True) #not working
read_data('aaa', debug = True)


###Positional Only Arguments
def func(x, y, /): 
    pass

func(1, 2)
func(1, y = 2) #not working
