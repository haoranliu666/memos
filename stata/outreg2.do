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

*多重被解释变量、关键解释变量、控制变量、固定效应
webuse nlswork, clear
global ylist "ln_wage wks_ue"
global xlist "age race"
global control1 "hours union"
global control2 "ttl_exp tenure"
qui foreach y of varlist $ylist{
	foreach x of varlist $xlist{		
		reghdfe `y' `x', absorb(year) cluster(idcode)
		est store Time1
		reghdfe `y' `x' $control1, absorb(year) cluster(idcode)
		est store Time2
		reghdfe `y' `x' $control1 $control2, absorb(year) cluster(idcode)
		est store Time3

		reghdfe `y' `x', absorb(idcode) cluster(idcode)
		est store Firm1
		reghdfe `y' `x' $control1, absorb(idcode) cluster(idcode)
		est store Firm2
		reghdfe `y' `x'  $control1 $control2, absorb(idcode) cluster(idcode)
		est store Firm3
		
		reghdfe `y' `x', absorb(year idcode) cluster(idcode)
		est store TimeFirm1
		reghdfe `y' `x' $control1, absorb(year idcode) cluster(idcode)
		est store TimeFirm2
		reghdfe `y' `x' $control1 $control2, absorb(year idcode) cluster(idcode)
		est store TimeFirm3
		
		outreg2 [*] using `y'_`x', replace dta tstat bdec(3) tdec(2)
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
