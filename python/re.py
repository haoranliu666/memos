import re

temp = "aMczzzaNc"

#search
re_aaa = re.compile(r'a(.)c')
re_aaa.findall(temp)

#replace
re.sub(r'a.c', 'x', temp)
