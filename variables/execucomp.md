https://wrds-www.wharton.upenn.edu/documents/960/Execucomp_Data_Definitions.pdf

https://wrds-www.wharton.upenn.edu/pages/support/manuals-and-overviews/compustat/execucomp/

https://wrds-www.wharton.upenn.edu/pages/grid-items/compustat-execucomp-basics/

https://wrds-www.wharton.upenn.edu/pages/support/manuals-and-overviews/compustat/execucomp/overview-executive-compensation/



Firms has been in S&P1500

Annually about 2500 firms

Data on top 5 executive officers compensation from DEF14A (some up to 9)

~30000 executives



IDs:

EXECID: permanent id for each executive, it stays the same throughout her career.

CO_PER_ROL: for executive-company combination.

To identify the CEO at year t, use CEOANN - which is a historic variable.

Some discrepancies with the variable BECAMECEO - when the executive became the CEO -. In these cases, there is valuable information in the variable COMMENT. !!!!

EXECDIR = "TRUE" indicates that the named executive officer served as director during the indicated fiscal year.

If the CEO is chairman: The best way to get this information is to use either the TITLE or
 TITLEANN variable and search for the character strings "chairman" or "chmn."



Change of accounting standard in 2006 (FAS 123R)

- Main compensation item TDC1 for TOTAL compensation has continuity.

Under this new reporting regime:

- ﻿﻿Cost of all employee stock options and other equity-based comp. based on the estimated fair value of the awards.
- ﻿﻿Prior to this time, the burden was on the researcher to determine a fair value.





Vars

Total Compensation Including Option Grant      Variable Name = TDC1

Salary  Variable Name = SALARY

Bonus Variable Name = BONUS

Other Total  Variable Name = OTHCOMP



Stock & Options Compensation

Total Value of Restricted Stock Granted  Variable Name = STOCK_AWARDS

Total Value of Stock Options Granted    Variable Name = OPTION_AWARDS



Fiscal year: link ExecuComp to Compustat

“Year” in Execucomp is based on fiscal year. Compustat defines a fiscal year based on the FYR value.

Compustat North America provides the variable FYR which represents the month on which the fiscal year ends (e.g. FYR = 3 means that fiscal year ends on March). 

For a fiscal year ending in January through May (e.g. FYR = 1 through 5), then the fiscal year is one less than the year in which the fiscal year ends. 

For example, for a fiscal year ending in Feb, 2002, the fiscal year assigned would be 2001. The same is true for a fiscal year ending as late as May 31, 2002, FYR2001.



Sudo code for link Compustat and ExecuComp

In Compustat

rename year real_year

gen year = real_year

replace year = year - 1 if fyr <= 5

merge gvkey year using ExecuComp

drop year

rename real_year year