### BoardEX

https://wrds-www.wharton.upenn.edu/pages/classroom/introduction-boardex/

https://wrds-www.wharton.upenn.edu/documents/1634/introduction-to-wrds-introduction-to-boardex-teaching-note.docx

https://metalib.ie.edu/ayuda/Varios/BoardExWRDSDataDictionary.pdf

Biographical information

Board and committee membership

Detailed compensation data

Connecting networks between individuals and companies/associations



Data coverage began in 1999.



The three primary BoardEx-specific identifiers are **BoardID**, **CompanyID**, and **DirectorID**.

Note: BoardID is the same as CompanyID.



##### Data Organization: By Section

**Individual Profile** includes biographical details, such as age, gender, and nationality; this section also contains information about the individual’s employment, education, achievements, and other “non-business” activities. Employment history: BoardEx - Individual Profile Employment

!! **Organization Summary** provides information about the board of directors. It includes the organization’s name, and its constituents’ names and roles. This section also contains board-level summary statistics, such as the number of board members, its nationality mix, gender ratio, and attrition rate.

**Networks/Associations** contains: (1) “organizational network data,” which show linked organizations and the name and role of the individual that connects them; and (2) “individual networks,” with names of linked individuals, as well as the organization linking them. (individual -> organizations -> other individuals; or organizations -> individual)

**Compensation Analysis** includes a detailed breakdown of the individual’s annual remuneration. Total annual remuneration is the total financial compensation paid to an employee for that period. For executive employees, remuneration typically includes salary, options, bonuses, deferred compensation, and any other financial compensation. The data also includes the appropriate currency.

**Committee Details** names the committee(s) upon which the individual sits.  Data: BoardEx - Board and Director Committees; has information on:

boardid - directorid - date - committee type - board role (seems not very useful since Organization Summary already has good info)

**Company Profile** includes contact information for the organization, as well as standardized company IDs, such as ISIN code. 



##### Get company level governance vars

Data: Organization Summary - Analytics; Select Board Members only

Vars:

genderratio: The proportion of male directors at the Annual Report Date selected.

timeretirement: Time to Retirement for the individual at a selected Annual Report Date assuming a retirement age of 70.

timebrd: Time on Board for the individual at a selected Annual Report Date.

timeinco: Time In Company 

noquals: The average number of qualifications at undergraduate level and and above forall the Directors at the Annual Report Date selected

numberdirectors: Number of Directors on Board (numberdirectors)

ned: Non-Executive Director

rolename

### BoardEx CRSP Compustat Link from WRDS

https://wrds-www.wharton.upenn.edu/pages/get-data/linking-suite-wrds/boardex-crsp-compustat-link/

link Permco (or GVKEY) to companyid from BoardEx



#### Score

score = 1 :

CUSIP Issuer/CIK/Ticker match and Acceptable Fuzzy Matching (SAS spedis <10)

score = 2 :

CUSIP Issuer/CIK/Ticker match

score = 3 :

CUSIP Issuer/CIK match or

CUSIP Issuer/Ticker match or

CIK/Ticker match

score = 4:

CUSIP Issuer match

score = 5 :

Ticker/Identical Company Name match or

CIK/Phone-Fax number match

score = 6 :

CIK Match

score = 7 :

Ticker match and Acceptable Fuzzy Matching (SAS spedis <10) score = 8 :

Phone-fax match number match and Acceptable Fuzzy Matching (SAS spedis <10)

score = 9 :

More Acceptable Fuzzy Matching (SAS spedis <5)

score =10 :

Less Acceptable Fuzzy Matching (SAS spedis >5 and spedis <10)

##### preferred

It is equal to 1 if:

1. ﻿﻿﻿PERMCO does not have duplicates.
2. ﻿﻿﻿PERMCO has duplicates but its score is the lowest when compared with scores of the duplicates.

##### Duplicate

It is equal to 1 when a given PERMCO has more than one Boardex Company ID or Compustat GVKEY match. Otherwise, it is Zero.



### WRDS People Link
https://wrds-www.wharton.upenn.edu/pages/get-data/linking-suite-wrds/wrds-people-link/


