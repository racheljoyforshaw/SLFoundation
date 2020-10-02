********************************************************************************
*********************** DATA CLEANING  *****************************************
********************************************************************************

use Data/LFS_all_raw_5q.dta, clear


****************** subset data *************************************************

*working age pop
keep if age1>16 & age1<65

* drop negative wages
drop if grsswk1<0
		
****************** define time *************************************************

split source, p("_") gen(stub)


*** quarter ***
gen quarter = "."
replace quarter = "q1" if substr(stub4,1,2)=="jm"
replace quarter = "q2" if substr(stub4,1,2)=="aj"
replace quarter = "q3" if substr(stub4,1,2)=="js"
replace quarter = "q4" if substr(stub4,1,2)=="od"

*** year ***
gen year = substr(stub4,3,2)
* format the year
replace year = "20" + year


* all together
gen date= year+quarter
gen qtime= quarterly(date, "YQ")
format qtime %tq
drop date
rename qtime date
drop stub*
drop source


		
****************** pay *************************************************
* create annual pay

gen annual_pay = grsswk1*52

* create pay categories

gen pay_cat = .
replace pay_cat =1 if annual_pay>10000 & annual_pay<20000 
replace pay_cat =2 if annual_pay>20000 & annual_pay<30000 
replace pay_cat =3 if annual_pay>30000 & annual_pay<40000 
replace pay_cat =4 if annual_pay>40000 & annual_pay<50000 
replace pay_cat =5 if annual_pay>50000 & annual_pay<60000 
replace pay_cat =6 if annual_pay>60000 & annual_pay<70000 
replace pay_cat =7 if annual_pay>70000 & annual_pay<80000 
replace pay_cat =8 if annual_pay<10000 
replace pay_cat =9 if annual_pay>80000



save Data/LFS_5q.dta, replace


		 
