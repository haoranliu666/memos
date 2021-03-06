* . is infinite
* + - * / ^
* == != ~= > < >= <=
* & |

help
search // same as findit

quiet

ssc hot, n(20)
ssc install winsor2
ssc install des2 // des with link
ssc install fsum
ssc install estout
ssc install cntrade

cls
clear
clear all

cd "D\XXX" 

webuse apple, clear
sysuse auto, clear 

browse
describe
des2
ds // all variable names
summarize
sum price mpg rep78 weight length
sum price-length
sum p*
sum p?i?e
fsum
fsum, s(mean sd p50 min max) cat(rep78 foreign)
tabulate price
tabulate price rep78
table rep78 foreign // two var matrix
tabstat
tabstat price weight mpg rep78, by(foreign) stat(mean sd min max)
display 1+1
list price wei len mpg make
count if price > 10000

gen wlratio = weight / length
label var wlratio "weight-length ratio"
egen lnprice = max(price)
gen Yesbad = 0
replace Yesbad=1 if rep78>=4 & rep78!=.
rename Yesbad repair4
drop wlratio lnprice repair4
order rep78 weight length

*number-name map
sysuse nlsw88, clear
sort wage
gen Gwage = group(3)
label define Gwage 1 "low" 2 "midium" 3 "high"
label value Gwage Gwage

sort foreign
by foreign: fsum price wei len
bysort foreign: fsum price wei len
gsort

regress mpg price wei leng, robust
return list
ereturn list

pwcorr

sysuse nlsw88, clear
histogram wage
kdensity wage
scatter wage ttl_exp

twoway (scatter wage ttl_exp) (lfit wage ttl_exp)

twoway (kdensity wage if union == 1) ///
	(kdensity wage if union == 0), ///
	legend(label(1 "Union") label(2 "Non Union"))

*basic regression analysis
sysuse nlsw88, clear
global y "wage"
global x "hours tenure married collgrad"
qui reg $y $x i.race i.industry i.occupation
keep if e(sample)

reg $y $x
    est store m1
reg $y $x i.race
    est store m2
reg $y $x i.race i.industry
    est store m3
reg $y $x i.race i.occupation
    est store m4

local s "using temp.csv"
local m "m1 m2 m3 m4"
esttab `m' `s', replace nogap compress ///
	ar2 scalar(N) b(%6.3f) ///
	star(* 0.1 ** 0.05 *** 0.01) ///
	noomit nobase /// 
	indicate("Industry=*.industry" "Occupation=*.occupation")
	
*basic time series
tsset // time series
xtset // panel data

sysuse "sp500", clear
tsset date
gen t = _n
tsset t
gen lnclose = ln(close)
gen ret = D.lnclose
gen L2ret = L2.ret
reg ret L(1/3).ret F(1/3).ret

L.x // x_{t-1}
L3.x // x_{t-3}
F.x // x_{t+1}
D.x // x_t - x_{t-1}
D.L.x // x_{t-1} - x_{t-2}
