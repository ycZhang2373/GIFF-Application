/*
	Purpose		 : Convert HS8 to HS4
	Author		 : Xinyi Zhang
	Date created : Aug.15, 2020
*/
******************************************************************************************************
************************************ 连续四年全部下降 *******************************************
******************************************************************************************************

clear all
cd "D:\Matlab\bin\Peking University\World Data\Four_Down"
import excel "D:\Matlab\bin\Peking University\World Data\Four_Down\Bulgaria.xlsx", sheet("Sheet1") 
rename A HS4
rename B Growth2005
rename C Growth2010
rename D Growth2015
rename E Growth2019
merge 1:1 HS4 using "HS4_Xinyi.dta"
keep if _merge==3
drop _merge
generate str Country = "Bulgaria", before(HS4)
save "Bulgaria", replace

clear all
cd "D:\Matlab\bin\Peking University\World Data\Four_Down"
import excel "D:\Matlab\bin\Peking University\World Data\Four_Down\Chile.xlsx", sheet("Sheet1") 
rename A HS4
rename B Growth2005
rename C Growth2010
rename D Growth2015
rename E Growth2019
merge 1:1 HS4 using "HS4_Xinyi.dta"
keep if _merge==3
drop _merge
generate str Country = "Chile", before(HS4)
save "Chile", replace

clear all
cd "D:\Matlab\bin\Peking University\World Data\Four_Down"
import excel "D:\Matlab\bin\Peking University\World Data\Four_Down\Greece.xlsx", sheet("Sheet1") 
rename A HS4
rename B Growth2005
rename C Growth2010
rename D Growth2015
rename E Growth2019
merge 1:1 HS4 using "HS4_Xinyi.dta"
keep if _merge==3
drop _merge
generate str Country = "Greece", before(HS4)
save "Greece", replace

clear all
cd "D:\Matlab\bin\Peking University\World Data\Four_Down"
import excel "D:\Matlab\bin\Peking University\World Data\Four_Down\Hungary.xlsx", sheet("Sheet1") 
rename A HS4
rename B Growth2005
rename C Growth2010
rename D Growth2015
rename E Growth2019
merge 1:1 HS4 using "HS4_Xinyi.dta"
keep if _merge==3
drop _merge
generate str Country = "Hungary", before(HS4)
save "Hungary", replace

clear all
cd "D:\Matlab\bin\Peking University\World Data\Four_Down"
import excel "D:\Matlab\bin\Peking University\World Data\Four_Down\Latvia.xlsx", sheet("Sheet1") 
rename A HS4
rename B Growth2005
rename C Growth2010
rename D Growth2015
rename E Growth2019
merge 1:1 HS4 using "HS4_Xinyi.dta"
keep if _merge==3
drop _merge
generate str Country = "Latvia", before(HS4)
save "Latvia", replace

clear all
cd "D:\Matlab\bin\Peking University\World Data\Four_Down"
import excel "D:\Matlab\bin\Peking University\World Data\Four_Down\Malaysia.xlsx", sheet("Sheet1") 
rename A HS4
rename B Growth2005
rename C Growth2010
rename D Growth2015
rename E Growth2019
merge 1:1 HS4 using "HS4_Xinyi.dta"
keep if _merge==3
drop _merge
generate str Country = "Malaysia", before(HS4)
save "Malaysia", replace

clear all
cd "D:\Matlab\bin\Peking University\World Data\Four_Down"
import excel "D:\Matlab\bin\Peking University\World Data\Four_Down\Poland.xlsx", sheet("Sheet1") 
rename A HS4
rename B Growth2005
rename C Growth2010
rename D Growth2015
rename E Growth2019
merge 1:1 HS4 using "HS4_Xinyi.dta"
keep if _merge==3
drop _merge
generate str Country = "Poland", before(HS4)
save "Poland", replace

clear all
cd "D:\Matlab\bin\Peking University\World Data\Four_Down"
import excel "D:\Matlab\bin\Peking University\World Data\Four_Down\Romania.xlsx", sheet("Sheet1") 
rename A HS4
rename B Growth2005
rename C Growth2010
rename D Growth2015
rename E Growth2019
merge 1:1 HS4 using "HS4_Xinyi.dta"
keep if _merge==3
drop _merge
generate str Country = "Romania", before(HS4)
save "Romania", replace

clear all
cd "D:\Matlab\bin\Peking University\World Data\Four_Down"
import excel "D:\Matlab\bin\Peking University\World Data\Four_Down\Russia.xlsx", sheet("Sheet1") 
rename A HS4
rename B Growth2005
rename C Growth2010
rename D Growth2015
rename E Growth2019
merge 1:1 HS4 using "HS4_Xinyi.dta"
keep if _merge==3
drop _merge
generate str Country = "Russia", before(HS4)
save "Russia", replace

clear all
cd "D:\Matlab\bin\Peking University\World Data\Four_Down"
import excel "D:\Matlab\bin\Peking University\World Data\Four_Down\Turkey.xlsx", sheet("Sheet1") 
rename A HS4
rename B Growth2005
rename C Growth2010
rename D Growth2015
rename E Growth2019
merge 1:1 HS4 using "HS4_Xinyi.dta"
keep if _merge==3
drop _merge
generate str Country = "Turkey", before(HS4)
save "Turkey", replace

clear all
append using "Bulgaria.dta" "Chile.dta" "Greece.dta" "Hungary.dta" "Latvia.dta" "Malaysia.dta" "Poland.dta" "Romania.dta" "Russia.dta" "Turkey.dta", generate(Four_Down)
order Four_Down Country HS4 Name4 ch_Name4 Growth2005 Growth2010 Growth2015 Growth2019
export excel "Four_Down.xlsx", firstrow(variables) replace
