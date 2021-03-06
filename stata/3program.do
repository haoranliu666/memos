*define a program
program define myprog
version 16.0
  display "Hello world!"
end


*show all program
program dir


*capture and display errors
capture
display _rc 


*do not display outcome
quietly{
  reg x y
}


*preserve the data and restore it in program
sysuse auto, clear
  preserve
    keep price weight foreign
    sum
  restore // restore to the preserved status
sum


*single variable in memory
scalar a = 3
scalar b = sin(a) + 3
scalar s = "hello world!"
scalar s2 = substr(s, 1, 5)


*use specific observed value
sysuse auto, clear
dis price[3]
list price in 1/3
sort price


*_N
gen p_max = price[_N] // _N is the sample size

*_n
gen id = _n // _n is the current place of observed value
sysuse sp500, clear
gen close_lag = close[_n-1]


*show all scalars
sysuse auto, clear

sum price
return list // show all scalars in memory

reg price wei len
eret list // show all estimation result


*local
*only exists in one-time enviorment
local a = 5
display `a'
local s = "hello world"
display "`s'"

sysuse auto, clear
local x "price"
local y "weight rep78 length"
reg `x' `y'


*global
*always exists
global a = 5
display `a'

macro dir



*add paramater and option into program
*args

program define show
version 16.0
args k
  display `k'
end

*syntax



