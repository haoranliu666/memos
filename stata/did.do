*Difference-in-difference
*https://mp.weixin.qq.com/s/M9RWjBA6W4z3_eQtiuYMyg
*https://www.lianxh.cn/news/73a938e236d82.html
*https://www.lianxh.cn/news/c72c6fe03a580.html
*https://www.lianxh.cn/news/49014f33b87f9.html

*time 2000...2005...2009
*post if time>=2005
*id 1...11...20
*treat if id >=11

*产生20个体10年的面板数据
clear all
set obs 20
gen id =_n
expand 11
drop in 1/20
count
bys id: gen time = _n+1999
xtset id time

*生成x
gen x = rnormal(0,1)

*生成treat和post
gen treat = 0 
replace treat = 1 if  id >= 11
gen post = 0
replace post = 1 if time >= 2005

*生成y
*随便加个时间效应和固定效应
gen y = x + 1*(time-1999) + 1*id + 3*post*treat
binscatter y time, line(connect) by(treat)

*双向固定效应回归
gen treat_post = treat*post
reghdfe y treat_post, absorb(id time)

*平行趋势检验 看t值
reghdfe y treat#i.time, vce(robust) absorb(id time)
