/*
	Purpose		 : Convert HS8 to HS4
	Author		 : Xinyi Zhang
	Date created : Aug.15, 2020
*/
******************************************************************************************************
************ 2020Export超过了32467行，STATA SE无法运行，需要换STATA M ***************
******************************************************************************************************

/*
	Purpose		 : Convert HS8 to HS4
	Author		 : Xinyi Zhang
	Date created : Aug.15, 2020
*/
******************************************************************************************************
************************************ 连续四年全部下降 *******************************************
******************************************************************************************************

clear all
cd "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown"
import excel "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown\Bulgaria.xlsx", sheet("Sheet1") 
rename A HS4
merge 1:m HS4 using "Bulgaria_HS4.dta"
keep if _merge == 3
drop _merge
export excel "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown\matched_Bulgaria.xlsx", firstrow(variables) replace 

clear all
cd "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown"
import excel "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown\Chile.xlsx", sheet("Sheet1") 
rename A HS4
merge 1:m HS4 using "Chile_HS4.dta"
keep if _merge == 3
drop _merge
export excel "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown\matched_Chile.xlsx", firstrow(variables) replace

clear all
cd "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown"
import excel "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown\Greece.xlsx", sheet("Sheet1") 
rename A HS4
merge 1:m HS4 using "Greece_HS4.dta"
keep if _merge == 3
drop _merge
export excel "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown\matched_Greece.xlsx", firstrow(variables) replace

clear all
cd "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown"
import excel "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown\Hungary.xlsx", sheet("Sheet1") 
rename A HS4
merge 1:m HS4 using "Hungary_HS4.dta"
keep if _merge == 3
drop _merge
export excel "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown\matched_Hungary.xlsx", firstrow(variables) replace

clear all
cd "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown"
import excel "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown\Latvia.xlsx", sheet("Sheet1") 
rename A HS4
merge 1:m HS4 using "Latvia_HS4.dta"
keep if _merge == 3
drop _merge
export excel "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown\matched_Latvia.xlsx", firstrow(variables) replace

clear all
cd "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown"
import excel "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown\Malaysia.xlsx", sheet("Sheet1") 
rename A HS4
merge 1:m HS4 using "Malaysia_HS4.dta"
keep if _merge == 3
drop _merge
export excel "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown\matched_Malaysia.xlsx", firstrow(variables) replace

clear all
cd "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown"
import excel "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown\Poland.xlsx", sheet("Sheet1") 
rename A HS4
merge 1:m HS4 using "Poland_HS4.dta"
keep if _merge == 3
drop _merge
export excel "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown\matched_Poland.xlsx", firstrow(variables) replace

clear all
cd "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown"
import excel "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown\Romania.xlsx", sheet("Sheet1") 
rename A HS4
merge 1:m HS4 using "Romania_HS4.dta"
keep if _merge == 3
drop _merge
export excel "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown\matched_Romania.xlsx", firstrow(variables) replace

clear all
cd "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown"
import excel "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown\Russia.xlsx", sheet("Sheet1") 
rename A HS4
merge 1:m HS4 using "Russia_HS4.dta"
keep if _merge == 3
drop _merge
export excel "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown\matched_Russia.xlsx", firstrow(variables) replace

clear all
cd "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown"
import excel "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown\Turkey.xlsx", sheet("Sheet1") 
rename A HS4
merge 1:m HS4 using "Turkey_HS4.dta"
keep if _merge == 3
drop _merge
export excel "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown\matched_Turkey.xlsx", firstrow(variables) replace


