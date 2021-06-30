*输出结果至Excel
sysuse auto, clear
global y "price"
global x "mpg"
global control1 "weight"
global control2 "length headroom foreign"
reg $y $x
outreg2 using result, replace dta tstat bdec(3) tdec(2) ctitle($y) 
reg $y $x $control1
outreg2 using result, append dta tstat bdec(3) tdec(2) ctitle($y) 
reg $y $x $control1 $control2
outreg2 using result, append dta tstat bdec(3) tdec(2) ctitle($y) 
//bdec(3) beta 保留3位
//tdec(2) t 保留2位
use result_dta.dta, clear
export excel using "result"

*多重被解释变量、关键解释变量
webuse nlswork, clear
global ylist "ln_wage wks_ue"
global xlist "age race"
global control1 "hours union"
global control2 "ttl_exp tenure"
foreach y of varlist $ylist{
	foreach x of varlist $xlist{
		reghdfe `y' `x', absorb(year) cluster(idcode)
		outreg2 using `y'_`x', replace dta tstat bdec(3) tdec(2) ctitle(`y') addtext(FE, Time) addstat(Adjusted R-squared, e(r2_a))
		reghdfe `y' `x' $control1, absorb(year) cluster(idcode)
		outreg2 using `y'_`x', append dta tstat bdec(3) tdec(2) ctitle(`y') addtext(FE, Time) addstat(Adjusted R-squared, e(r2_a))
		reghdfe `y' `x' $control1 $control2, absorb(year) cluster(idcode)
		outreg2 using `y'_`x', append dta tstat bdec(3) tdec(2) ctitle(`y') addtext(FE, Time) addstat(Adjusted R-squared, e(r2_a))
		
		reghdfe `y' `x', absorb(idcode) cluster(idcode)
		outreg2 using `y'_`x', append dta tstat bdec(3) tdec(2) ctitle(`y') addtext(FE, ID) addstat(Adjusted R-squared, e(r2_a))
		reghdfe `y' `x' $control1, absorb(idcode) cluster(idcode)
		outreg2 using `y'_`x', append dta tstat bdec(3) tdec(2) ctitle(`y') addtext(FE, ID) addstat(Adjusted R-squared, e(r2_a))
		reghdfe `y' `x'  $control1 $control2, absorb(idcode) cluster(idcode)
		outreg2 using `y'_`x', append dta tstat bdec(3) tdec(2) ctitle(`y') addtext(FE, ID) addstat(Adjusted R-squared, e(r2_a))
		
		reghdfe `y' `x', absorb(year year) cluster(idcode)
		outreg2 using `y'_`x', append dta tstat bdec(3) tdec(2) ctitle(`y') addtext(FE, Time&ID) addstat(Adjusted R-squared, e(r2_a))
		reghdfe `y' `x' $control1, absorb(year year) cluster(idcode)
		outreg2 using `y'_`x', append dta tstat bdec(3) tdec(2) ctitle(`y') addtext(FE, Time&ID) addstat(Adjusted R-squared, e(r2_a))
		reghdfe `y' `x' $control1 $control2, absorb(year year) cluster(idcode)
		outreg2 using `y'_`x', append dta tstat bdec(3) tdec(2) ctitle(`y') addtext(FE, Time&ID) addstat(Adjusted R-squared, e(r2_a))
	}
}

local ylist_local "$ylist"
local xlist_local "$xlist"
foreach y of local ylist_local{
	foreach x of local xlist_local{
		use `y'_`x'_dta.dta, clear
		export excel using "`y'" , sheet("`x'")
	}
}
