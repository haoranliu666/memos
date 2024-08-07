*https://friosavila.github.io/playingwithstata/main_csdid.html

use https://friosavila.github.io/playingwithstata/drdid/mpdta.dta, clear

csdid  lemp lpop , ivar(countyreal) time(year) gvar(first_treat) method(dripw)

estat pretrend

estat simple 

estat calendar

estat group

estat event

csdid  lemp lpop , ivar(countyreal) time(year) gvar(first_treat) method(dripw) ///
	agg(event) saverif(rif_example) wboot replace rseed(1)

csdid_plot



csdid_plot, group(2004) name(m1,replace) title("Group 2004")
csdid_plot, group(2006) name(m2,replace) title("Group 2006")
csdid_plot, group(2007) name(m3,replace) title("Group 2007")
graph combine m1 m2 m3, xcommon scale(0.8)



qui:csdid_stats group, wboot rseed(1)
csdid_plot, name(m1,replace) 
qui:csdid_stats calendar, wboot rseed(1)
csdid_plot, name(m2,replace) 
graph combine m1 m2, xcommon xsize(10) ysize(5)





