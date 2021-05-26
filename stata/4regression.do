*散点图与回归拟合图
sysuse "auto.dta", clear
regress price weight
scatter price wei
ssc install aaplot
aaplot price weight

*产生预测值与残差
sysuse "auto.dta", clear
reg price weight
predict price_fit //generate y^hat
predict r, residual //generate y-y^hat

*控制变量
sysuse "auto.dta", clear
reg price mpg
est store m1
reg price mpg weight
est store m2

esttab m1 m2, nogap s(r2 N)

*异方差robust, 同行业cluster
sysuse "nlsw88.dta", clear 
global x "hours ttl_exp tenure south collgrad married"
reg wage $x
 est store m1
reg wage $x, robust
 est store m2
reg wage $x, vce(cluster industry)
est store m3
esttab m1 m2 m3, mtitle(homo robust cluster) b(%4.3f) se(%6.4f) brackets ///
	  star(* 0.1 ** 0.05 *** 0.01) nogap

*Jackknife, Bootstrap
sysuse "nlsw88.dta", clear
reg wage hours, vce(jackknife)
reg wage hours, vce(bs,reps(300))

*dummy variable
sysuse "nlsw88.dta", clear
drop if union==.
rename union D
reg wage hours 

reg wage hours i.D
margins D, at(hours = (5(5)80)) atmeans
marginsplot

reg wage i.D##c.hours  //D, hours, D*hours
margins D, at(hours =(1(3)80)) atmeans
marginsplot

*交乘项
sysuse "nlsw88.dta", clear
reg wage hours 
reg wage c.hours##c.tenure
keep if e(sample)
sum hours
local min:  dis %4.1f r(min)
local max:  dis %4.1f r(max)
margins, dydx(hours) at(tenure=(`min'(2)`max'))
marginsplot, ylabel(-1(0.1)0.1,angle(0) format(%2.1f))   ///
   yline(0, lpattern(dash) lcolor(red))

*假设检验
sysuse auto, clear
reg price mpg rep78
test mpg
test mpg = 20 // t-test
test mpg + rep78 = 0 // multivariable t-test
test mpg rep78 // f-test
test (mpg = 1) (rep78 = 3)

reg price mpg rep78
est store m1
reg price mpg if e(sample)
est store m2
lrtest m1 m2 //log-likelihood ratio test

*panel
sysuse nlswork, clear
replace year = 1900+year
xtset id year
xtdes
xtreg ln_wage hours, fe //fixed effect
xtreg ln_wage hours i.year, fe //+ time dummy
xtreg ln_wage hours i.year, fe robust //robust time-corr
xtreg ln_wage hours i.year, fe cluster(idcode) //cluster id-corr
xtreg ln_wage hours, re //random efffect
