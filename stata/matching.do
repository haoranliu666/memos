*why mahalanobis is good
*https://www.lianxh.cn/details/249.html
cd "/Users/haoranliu/Downloads/"

sysuse nlsw88, clear

tab union

*_n1 -> _id
psmatch2 union, mahalanobis(age grade ttl_exp)
order union _*



// sort _id
// gen x_of_match = x[_n1]
// order x_of_match
//
// gen age_of_match = age[_n1]
// order age age_of_match
//
// help psmatch2






*https://www.lianxh.cn/details/173.html

cd "/Users/haoranliu/Downloads/"

use "nlsy.dta", clear

*treatment var: first
*outcome var: piatm56

tab first

*-psmatch2 匹配
global x "b_marr lths hs ltcoll pr0 lnfinc_a0 momage afqt brthwt brorddum preterm rmomwk"
psmatch2 first $x,  kernel out(piatm56) comm

*-平衡性检验
pstest $x

*-共同取值范围
psgraph







*https://www.lianxh.cn/details/1418.html
// 加载数据
sysuse nlsw88, clear

// 估计倾向得分
logit union age grade ttl_exp

// 保存倾向得分
predict pscore, pr

// 最近邻匹配
psmatch2 union (age grade ttl_exp), ///
    neighbor(1) ///
    outcome(wage)

// 半径匹配
psmatch2 union (age grade ttl_exp), ///
    radius caliper(0.05) ///
    outcome(wage)

// 核匹配
psmatch2 union (age grade ttl_exp), ///
    kernel kerneltype(epan) ///
    bandwidth(0.06) ///
    outcome(wage)
	