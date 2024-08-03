*https://www.lianxh.cn/details/264.html

*Summary Statistics
sysuse auto,clear

sum2docx price mpg rep78 foreign ///
        using "Summary Statistics.docx", replace ///
		stats(N mean(%9.2f) sd(%9.2f) min(%9.2f) p25(%9.2f) median(%9.2f) p75(%9.2f) max(%9.2f)) ///
		title("Table: Summary Statistics")


*Correlation Matrix
sysuse auto,clear

corr2docx price mpg rep78 foreign ///
        using "Correlation Matrix.docx", replace ///
	    star(* 0.1 ** 0.05 *** 0.01) ///
        fmt(%4.2f) ///
        title("Table: Correlation Matrix") ///
		pearson(pw) spearman(ignore) landscape
		

*t-test
sysuse auto, clear

t2docx price mpg rep78 ///
        using "t-test.docx", replace   ///
        by(foreign)            ///
        title("Table: T-test")
		