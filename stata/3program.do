*define a program
cap program drop myprog
program define myprog
version 16.0
	preserve
		dis "Hello World"
	restore
end

myprog

*全部单变量
macro dir
matrix dir

*scalar
scalar a = 3   
scalar b = ln(a) + (3^4.2)/exp(2)
dis a
dis b

*
sysuse "auto.dta", clear
sum price
return list
dis r(mean)
reg price wei len mpg foreign
ereturn list
dis e(r2)
matrix list e(b)
dis _b[weight]
dis _b[_cons]

*local
local a = 5
dis `a'

sysuse auto, clear
local y "price"
local x "weight rep78 length"
reg `y' `x'

*global
sysuse auto, clear
global y "price"
global x "weight rep78 length"
reg $y $x

*while
local j = 0
while `j'<5{
  dis  `j'
  local j = `j' + 1
}

*forvalues
forvalues j = 1/5{
	dis `j'
}

*foreach v of varlist
sysuse auto,clear
global vars "price weight length"
foreach v of varlist $vars{
gen ln_`v' = ln(`v')
label variable ln_`v'  "ln(`v')" 
}

*取出、更改某个位置的变量
sysuse auto, clear
dis price[3]
replace price = 5 in 4


*if else
scalar aa = 1   // 测试，修改为 aa==-1
if aa==1{
 dis "这小子真帅!"
}
else if aa==0{
 dis "这女孩真靓!"
}
else{
 dis "我晕!"
}

*matrix
matrix a = (1,2,3 \ 4,5,6)
mat list a
dis a[2,3]
