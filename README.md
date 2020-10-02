# SLFoundation
************ OVERVIEW ****************

This repository replicates the data analysis of Ersoy, Forshaw, Lukas & Sulka
'???' (working title)

************ REQUIRED SOFTWARE ************

STATA

************ FILES ************

MASTER.do - master file calls all code
Data_extraction.do  - extracts separate .dta files into one .dta file for 5q surveys
Data_organisation.do - cleans 5q extracted data
Data_analysis.do - completes data analysis

************ REPLICATION STEPS ************


1. Download Longitudinal LFS data for your desired time period from ukdataservice.ac.uk/, extract and save UKDA/ folders into the Extracted_5q folders

2. Open Code/MASTER.do in Stata
    Change lines 9 to reflect the paths to your repository
    
3. Run MASTER.do


