

// help stcox



*Example of Cox regression with uncensored data
webuse kva, clear

describe 

reg failtime load bearings

stset failtime
stcox load bearings
stcox, nohr



*Example of Cox regression with censored data
*https://www.youtube.com/watch?v=K8AtZF79yhw

webuse drugtr, clear

stcox drug age

sts graph, by(drug) ci

// sts graph, by(age) ci


*Example of Cox regression with continuous time-varying covariates


webuse drugtr2

stset time, failure(cured)

stcox age drug1 drug2
stcox age drug1 drug2, nohr

// stcox age, tvc(drug1 drug2) texp(exp(-0.35*_t))





*https://www.lianxh.cn/news/0de16d365945e.html
use http://www.stata-press.com/data/cggm3/hip, clear //调用 hip.dta 数据

use http://www.stata-press.com/data/cggm3/hip2, clear 

stset time1, origin(time time0) id(id) failure(fracture == 1)

stdescribe

sts graph
sts graph, by(protect) plot2opts(lp("-")) 

streg protect age calcium, nohr nolog dist(weib)


