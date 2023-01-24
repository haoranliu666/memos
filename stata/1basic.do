* . is infinite
* + - * / ^
* == != ~= > < >= <=
* & |

*run the line in do-file
*command + shift + D

help
search // same as findit

which reg
which q

cls
clear
clear all

return list
ereturn list
matrix list


quiet

*csv
import delimited using /xxx.csv, clear

*-产生新变量和修改旧变量
sysuse auto, clear
gen lnprice = ln(price)
label variable lnprice "ln(price)"
  
gen Yesbad = 0
replace Yesbad=1 if (rep78>=4) & (rep78!=.)
browse rep78 Yesbad

*导入excel
import excel "/Users/haoranliu/Desktop/word/gmatxxx.xlsx", sheet("Sheet1") firstrow clear  

*韦恩图
ssc install pvenn, replace
sysuse "nlsw88", clear
pvenn married collgrad south

*查看数据类型、解释
sysuse "nlsw88.dta", clear
des
ssc install des2
des2

*基本统计量
sysuse "nlsw88.dta", clear
sum
ssc install fsum, replace
fsum, s(mean sd p50 min max) cat(rep78 foreign) label

*存储基本统计量
sysuse "auto.dta", clear
logout, save(table1_sum) excel word replace: ///
	tabstat price wei len mpg turn foreign,      ///
	stat(mean sd p50 min max) format(%7.2f) column(statistic) 

*分组统计
sysuse "auto.dta", clear
bysort foreign: fsum price wei len

*排序
sysuse "auto.dta", clear
sort price
gsort -price

*相关系数
sysuse "auto.dta", clear
pwcorr price wei len mpg
graph matrix price wei len mpg

*直方图和密度函数
sysuse "nlsw88.dta", clear
histogram wage
kdensity  wage
twoway (kdensity wage if union==1)  ///
	(kdensity wage if union==0), ///
	legend(label(1 "Union") label(2 "Non-Union"))
ssc install mkdensity, replace
mkdensity wage, over(union)

*散点图
sysuse "nlsw88.dta", clear
scatter wage ttl_exp, msymbol(Oh) msize(*0.5)
twoway (scatter wage ttl_exp) (lfit wage ttl_exp) //散点图+线性拟合图
qui reg wage ttl_exp hours i.race i.industry //added variable plot
avplot ttl_exp, m(Oh) msize(*0.4)
*https://sites.google.com/site/statisticsforspreadsheets/regression-modeling/added-variable-plot

*计数
sysuse "auto.dta", clear
count if price>10000 
tab foreign
tab foreign rep78
tab foreign rep78, sum(price) mean

*两组均值差异检验
sysuse "auto.dta", clear
ttest price, by(foreign)

*变量更名、剔除、更改
sysuse "auto.dta", clear
rename weight wei
rename (length gear_ratio) (len gr)
drop turn gr make
drop if rep78==.
replace price=15000 if price>15000
  
*基本回归分析
sysuse "nlsw88", clear
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

esttab m1 m2 m3 m4 using table2 `s', replace nogap compress ///
	ar2 scalar(N)  b(%6.3f)           ///
	star(* 0.1 ** 0.05 *** 0.01)      ///
	noomit  nobase                    ///
	indicate("industry=*.industry" "occupation =*.occupation")
	
*in
sysuse "nlsw88", clear
sum in 10/20
sum wage in -5/-1

*by, bysort
sysuse "nlsw88", clear

sort race
by race: tabstat wage hours tenure,  ///
	s(mean sd min max) c(s) f(%6.3f)

bysort industry: reg wage hours tenure

bysort industry married: egen av_wage = mean(wage)
gen d_wage = wage-av_wage //经过 "行业-婚姻状况"调整后的工资水平


*变量名
sysuse "nlsw88", clear
sum age race married never_married grade
sum age-grade    // 顺序出现的变量，列出头尾两个变量即可
sum s*           // "*" 是孙悟空，可以表示`任何'长度的字母或数字
sum *arr*        // 可以用在任何位置
sum ?a?e         // "?" 是猪八戒，只能替代`一个'长度的字母或数字 

*滞后项/前移项/和差分项
sysuse "sp500", clear
tsset date
gen t = _n
tsset t
gen lnclose = ln(close)  // ln(收盘价)
gen ret = D.lnclose      // 收益率,一阶差分
gen L1ret = L1.ret       // 一期滞后项
gen L2ret = L2.ret       // 两期滞后项
corr *ret
reg ret L(1/3).ret F(1/3).ret

*egen
sysuse "nlsw88.dta", clear
gen hard_work = 0
bysort indu: egen median_hours = median(hours) //行业中位数
replace hard_work = 1 if (hours>median_hours)
replace hard_work = . if hours==.

*添加变量标签
sysuse "nlsw88.dta", clear
help label
label var ln_wage		"ln(wage)"
label var dum_black	"1=blak; 0=otherwise"
label var tenure_bl	"tenure*dum_black"	  

*-增加“数字-文字对应表”
sysuse "nlsw88.dta", clear
sort wage
gen Gwage = group(3)
br wage Gwage
tab Gwage
label define Gwage 1 "低" 2 "中" 3 "高"  //label value 可以与变量同名
label value Gwage Gwage
label list Gwage

*变量顺序
order

webuse apple, clear
sysuse auto, clear 

display 1+1

*变量名小写
rename *, lower

*每一个x的个数
bysort x, egen coun = count(_n)

*ttest表格
logout, excel save(ttest_result) replace: ttable3 $control $dependent, tvalue by(flag)

*取出ttest值，从结果矩阵中
ttable3 $dependent, by(flag)
mat A = r(rtable)
matrix list A
scalar temp = A[1,2]

*描点图
twoway (scatteri 50 -3 30 -2 35 -1 2 0 6 1 3 2 5 3, recast(connected)), xtitle("Time") xlabel(-3 "-3" -2 "-2" -1 0 "0" 1 "1" 2 "2" 3 "3") xscale(range(-3.2, 3.2))  ytitle("Value") ylabel(0(5)50)

*描点图 参数版
twoway (scatteri `=scalar(control_minus3)' -3 `=scalar(control_minus2)' -2 `=scalar(control_minus1)' -1 `=scalar(control_0)' 0, recast(connected)), xtitle("Time") xlabel(-3 "-3" -2 "-2" -1 0 "0" 1 "1" 2 "2" 3 "3") xscale(range(-3.2, 3.2))  ytitle("Value") ylabel(0(5)50)

*提取返回矩阵的元素
sysuse auto, clear
ttable3 price mpg weight length, by(foreign)
mat A = r(rtable)
matrix list A
scalar a = A[1,2]
