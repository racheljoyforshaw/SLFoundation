********************************************************************************
*********************** MASTER FILE ********************************************
********************************************************************************

*********************** Preliminaries ******************************************
clear
*** change directory

cd "/Users/rachel/Documents/Research/SLFoundation" /* path to where repository stored */
global my_python_path = "/usr/bin/" /* path to where Python stored */


************************** Data Extraction ***************************************
*** put together all files from extracted
* INPUTS: all files in Extracted folders (_quarterly)
* OUTPUTS: LFS_all_raw_quarterly.dta
do Code/Data_extraction.do

************************** Data Cleaning ***************************************
*** clean the data
* INPUTS:  LFS_all_raw_quarterly.dta
* OUTPUTS: LFS_quarterly.dta
do Code/Data_organisation.do
*erase LFS_all_raw_quarterly.dta

************************** Data Analysis ***************************************
*** clean the data
* INPUTS:  LFS_quarterly.dta
* OUTPUTS: 
do Code/Data_analysis.do

