help reg
help qreg //分位数回归
help ivregress //工具变量回归
help xtreg //面板数据回归
help diff //DID
help rd //RDD


sysuse "auto.dta", clear
reg price weight
aaplot price weight  //plot regress

ereturn list
matrix list e(b)
dis _b[weight]
dis _b[_cons]

reg price weight
predict price_fit //generate y^hat
predict r, residual //generate y-y^hat

reg price weight, robust //Heteroskedasticity-robust standard errors

reg price mpg
est store m1
reg price mpg weight
est store m2
esttab m1 m2

reg price weight mpg
avplots //partial-regression leverage plot

sysuse nlsw88, clear 
global x "hours ttl_exp tenure south collgrad married"
reg wage $x, vce(jackknife) //刀切法
reg wage $x, vce(bs,reps(300)) //bootstrap

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








