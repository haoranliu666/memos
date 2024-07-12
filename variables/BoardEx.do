cd "/Users/haoranliu/project5ceofit"


********************BoardEX Organization Summary
use "Data/BoardEx Organization Summary - Analytics.dta", clear

rename *, lower

gen year = year(annualreportdate)


****Independent director
// gen independent = 0
// replace independent = 1 if strpos(rolename, "independent") | strpos(rolename, "Independent")
//
// order independent rolename
// keep if independent == 1
// // keep if independent == 0
// bysort rolename: gen count = _N
// order count
// bysort rolename: keep if _n == 1
// gsort -count

gen independent = 0
replace independent = 1 if rolename == "Independent Director"
replace independent = 1 if rolename == "Independent Chairman"
replace independent = 1 if rolename == "Lead Independent Director"
replace independent = 1 if rolename == "Independent Corporate Director"
replace independent = 1 if rolename == "Independent Trustee"
replace independent = 1 if rolename == "Independent Vice Chairman"
replace independent = 1 if rolename == "Presiding Independent Director"
replace independent = 1 if rolename == "Independent NED"
replace independent = 1 if rolename == "Independent Chair"
replace independent = 1 if rolename == "Independent Director/Secretary"
replace independent = 1 if rolename == "Presiding Independent Chairman"
replace independent = 1 if rolename == "Lead Independent Chairman"


****Independent Non-Executive Director
gen ned_dummy = 0
replace ned_dummy = 1 if ned == "Yes"



****average
*sometimes a company has data duplications because it has multiple tickers
bysort companyid year directorid: keep if _n == 1

*number of directors
bysort companyid year: gen total_director = _N
*most of the time numberdirectors == total_director
// gen temp = total_director/numberdirectors
// tab temp

*number of independent directors
bysort companyid year: egen total_independent = sum(independent)
gen independent_ratio = total_independent/total_director

*number of non executive directors
bysort companyid year: egen total_ned = sum(ned_dummy)
gen ned_ratio = total_ned/total_director

*average time on board
bysort companyid year: egen avgtimebrd = mean(timebrd)

*average time in company
bysort companyid year: egen avgtimeinco = mean(timeinco)

*average number of qualifications at undergraduate level and and above 
bysort companyid year: egen avgquals = mean(noquals)







********************BoardEx - Board and Director Committees
*seems very useful

// use "BoardEx - Board and Director Committees.dta", clear

*Audit, Compensation, Nominating / Corporate Governance, Executive
// bysort CommitteeName: gen count = _N
// bysort CommitteeName: keep if _n == 1
// gsort -count
// order count CommitteeName

*chair vs non-chair
// bysort CommitteeRoleName: gen count = _N
// bysort CommitteeRoleName: keep if _n == 1
// gsort -count
// order count CommitteeRoleName

*Independent Director, Independent Chairman, or lots of other stuffs
// bysort BoardRole: gen count = _N
// bysort BoardRole: keep if _n == 1
// gsort -count
// order count BoardRole 

