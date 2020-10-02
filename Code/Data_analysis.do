********************************************************************************
*********************** DATA ANALYSIS  *****************************************
********************************************************************************

use Data/LFS_5q.dta, clear

* set survey weights
svyset [pw= lgwt18] 

* get stats
svy: tab govtof21, col ci percent nomarginal
estimates store region
estout region using Results/region.txt, replace

svy: proportion pay_cat
estimates store pay
estout pay using Results/pay.txt, replace
