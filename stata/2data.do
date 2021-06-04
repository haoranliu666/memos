*手动输入
clear
input x y z
	 1 2 3
	 4 5 6
end

*excel
import excel "auto.xls", clear sheet(domestic) firstrow 

*tab分隔数据, 包括.csv
import delimited using "d1.txt", clear

*空格分隔数据
import delimited using "d2.txt", clear delimiter(" ")

*逗号分隔的数据
import delimited using "d3.txt", clear delimiter(",")

*横向合并
merge 1:1 varname using dataname //1:m m:1

*纵向合并
use "a.dta", clear
append using "b.dta"

*转置
xpose, clear
rename (v1-v4) (year invest income consume) 

*奇怪数据处理
clear
input id	sex	inc80	inc81	inc82	ue80	ue81	ue82
1	0	5000	5500	6000	0	1	0
2	1	2000	2200	3300	1	0	0
3	0	3000	2000	1000	0	0	1
end
reshape long inc ue, i(id) j(year)
replace year = 1900 + year

*重复样本
isid varname
duplicates report varname

*缺失值
replace x = . if x == -999
replace x = . if x == "N/A"

*离群值
//对数
//缩尾
sysuse "nlsw88.dta", clear
winsor2 wage, cuts(1 99) 
//截尾
winsor2 wage, trim replace //默认1 99百分位

*数字字符串-数字
destring code, gen(code1) ignore(" ")  //"600 002" --> 600002
destring leverage, gen(lev) percent //"24%" --> 0.24

*文字-数字对应表
encode gov, gen(gov1)

*日期
clear
input id	str3 month	day	year
123456789	jan	10	2001
123456710	mar	20	2001
123456711	may	30	2001
123456712	jun	9	2001
123456713	oct	17	2001
123456714	nov	15	2001
123456715	dec	28	2001
123456716	apr	29	2001
123456717	mar	11	2001
123456718	jul	3	2001
end
tostring year day, replace
gen date = year + "-" + month + "-" + day
gen edate = date(date, "YMD")
format edate %td

*日期2
clear
input date_pub	div
20070930	.5
20080823	.3
20090102	.7
20081130	.3
20061204	.4
end
tostring date_pub, gen(date1)
gen year  = substr(date1, 1, 4)
gen month = substr(date1, 5, 2)
gen day   = substr(date1, 7, 2)
destring year month day, replace

*stata数字格式日期
format DATE %d
gen year = year(date)
gen month = month(date)
gen day = day(date)
keep if year < 1996
keep if year == 1996 & month < 12
keep if year == 1996 & month == 12 & day < 16


