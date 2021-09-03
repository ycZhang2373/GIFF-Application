/*
	Purpose		 : Convert HS8 to HS4
	Author		 : Xinyi Zhang
	Date created : Aug.15, 2020
*/
******************************************************************************************************
********************************* 中亚 2019大于2010 ****************************************
******************************************************************************************************

clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up"
import excel "D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up\armania.xlsx", sheet("Sheet1") 
rename A HS4
rename B Trade2010
rename C Trade2013
rename D Trade2016
rename E Trade2019
rename F Growth2013
rename G Growth2016
rename H Growth2019
merge m:1 HS4 using "HS4.dta"
keep if _merge==3
drop _merge
generate str Country = "Armenia", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Armenia", replace

clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up"
import excel "D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up\azerbaijan.xlsx", sheet("Sheet1") 
rename A HS4
rename B Trade2010
rename C Trade2013
rename D Trade2016
rename E Trade2019
rename F Growth2013
rename G Growth2016
rename H Growth2019
merge m:1 HS4 using "HS4.dta"
keep if _merge==3
drop _merge
generate str Country = "Azerbaijan", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Azerbaijan", replace

clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up"
import excel "D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up\bahrain.xlsx", sheet("Sheet1") 
rename A HS4
rename B Trade2010
rename C Trade2013
rename D Trade2016
rename E Trade2019
rename F Growth2013
rename G Growth2016
rename H Growth2019
merge m:1 HS4 using "HS4.dta"
keep if _merge==3
drop _merge
generate str Country = "Bahrain", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Bahrain", replace


clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up"
import excel "D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up\cyprus.xlsx", sheet("Sheet1") 
rename A HS4
rename B Trade2010
rename C Trade2013
rename D Trade2016
rename E Trade2019
rename F Growth2013
rename G Growth2016
rename H Growth2019
merge m:1 HS4 using "HS4.dta"
keep if _merge==3
drop _merge
generate str Country = "Cyprus", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Cyprus", replace


clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up"
import excel "D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up\Georgia.xlsx", sheet("Sheet1") 
rename A HS4
rename B Trade2010
rename C Trade2013
rename D Trade2016
rename E Trade2019
rename F Growth2013
rename G Growth2016
rename H Growth2019
merge m:1 HS4 using "HS4.dta"
keep if _merge==3
drop _merge
generate str Country = "Georgia", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Georgia", replace


clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up"
import excel "D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up\iran.xlsx", sheet("Sheet1") 
rename A HS4
rename B Trade2010
rename C Trade2013
rename D Trade2016
rename E Trade2019
rename F Growth2013
rename G Growth2016
rename H Growth2019
merge m:1 HS4 using "HS4.dta"
keep if _merge==3
drop _merge
generate str Country = "Iran", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Iran", replace


clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up"
import excel "D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up\Israel.xlsx", sheet("Sheet1") 
rename A HS4
rename B Trade2010
rename C Trade2013
rename D Trade2016
rename E Trade2019
rename F Growth2013
rename G Growth2016
rename H Growth2019
merge m:1 HS4 using "HS4.dta"
keep if _merge==3
drop _merge
generate str Country = "Israel", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Israel", replace


clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up"
import excel "D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up\Jordan.xlsx", sheet("Sheet1") 
rename A HS4
rename B Trade2010
rename C Trade2013
rename D Trade2016
rename E Trade2019
rename F Growth2013
rename G Growth2016
rename H Growth2019
merge m:1 HS4 using "HS4.dta"
keep if _merge==3
drop _merge
generate str Country = "Jordan", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Jordan", replace


clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up"
import excel "D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up\kuwait.xlsx", sheet("Sheet1") 
rename A HS4
rename B Trade2010
rename C Trade2013
rename D Trade2016
rename E Trade2019
rename F Growth2013
rename G Growth2016
rename H Growth2019
merge m:1 HS4 using "HS4.dta"
keep if _merge==3
drop _merge
generate str Country = "Kuwait", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Kuwait", replace


clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up"
import excel "D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up\Kyrgyzstan.xlsx", sheet("Sheet1") 
rename A HS4
rename B Trade2010
rename C Trade2013
rename D Trade2016
rename E Trade2019
rename F Growth2013
rename G Growth2016
rename H Growth2019
merge m:1 HS4 using "HS4.dta"
keep if _merge==3
drop _merge
generate str Country = "Kyrgyzstan", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Kyrgyzstan", replace


clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up"
import excel "D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up\lebanon.xlsx", sheet("Sheet1") 
rename A HS4
rename B Trade2010
rename C Trade2013
rename D Trade2016
rename E Trade2019
rename F Growth2013
rename G Growth2016
rename H Growth2019
merge m:1 HS4 using "HS4.dta"
keep if _merge==3
drop _merge
generate str Country = "Lebanon", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Lebanon", replace


clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up"
import excel "D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up\oman.xlsx", sheet("Sheet1") 
rename A HS4
rename B Trade2010
rename C Trade2013
rename D Trade2016
rename E Trade2019
rename F Growth2013
rename G Growth2016
rename H Growth2019
merge m:1 HS4 using "HS4.dta"
keep if _merge==3
drop _merge
generate str Country = "Oman", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Oman", replace


clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up"
import excel "D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up\Palestine.xlsx", sheet("Sheet1") 
rename A HS4
rename B Trade2010
rename C Trade2013
rename D Trade2016
rename E Trade2019
rename F Growth2013
rename G Growth2016
rename H Growth2019
merge m:1 HS4 using "HS4.dta"
keep if _merge==3
drop _merge
generate str Country = "Palstine", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Palestine", replace


clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up"
import excel "D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up\qatar.xlsx", sheet("Sheet1") 
rename A HS4
rename B Trade2010
rename C Trade2013
rename D Trade2016
rename E Trade2019
rename F Growth2013
rename G Growth2016
rename H Growth2019
merge m:1 HS4 using "HS4.dta"
keep if _merge==3
drop _merge
generate str Country = "Qatar", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Qatar", replace


clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up"
import excel "D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up\Saudi Arabia.xlsx", sheet("Sheet1") 
rename A HS4
rename B Trade2010
rename C Trade2013
rename D Trade2016
rename E Trade2019
rename F Growth2013
rename G Growth2016
rename H Growth2019
merge m:1 HS4 using "HS4.dta"
keep if _merge==3
drop _merge
generate str Country = "Saudi Arabia", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Saudi Arabia", replace


clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up"
import excel "D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up\turkey.xlsx", sheet("Sheet1") 
rename A HS4
rename B Trade2010
rename C Trade2013
rename D Trade2016
rename E Trade2019
rename F Growth2013
rename G Growth2016
rename H Growth2019
merge m:1 HS4 using "HS4.dta"
keep if _merge==3
drop _merge
generate str Country = "Turkey", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Turkey", replace


clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up"
import excel "D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up\United Areb Emirates.xlsx", sheet("Sheet1") 
rename A HS4
rename B Trade2010
rename C Trade2013
rename D Trade2016
rename E Trade2019
rename F Growth2013
rename G Growth2016
rename H Growth2019
merge m:1 HS4 using "HS4.dta"
keep if _merge==3
drop _merge
generate str Country = "United Areb Emirates", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "United Areb Emirates", replace


clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up"
import excel "D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up\Yemen.xlsx", sheet("Sheet1") 
rename A HS4
rename B Trade2010
rename C Trade2013
rename D Trade2016
rename E Trade2019
rename F Growth2013
rename G Growth2016
rename H Growth2019
merge m:1 HS4 using "HS4.dta"
keep if _merge==3
drop _merge
generate str Country = "Yemen", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Yemen", replace


clear all
append using "Armenia.dta" "Azerbaijan.dta" "Bahrain.dta" "Cyprus.dta" "Georgia.dta" "Iran.dta" "Israel.dta" "Jordan.dta" "Kuwait.dta" "Kyrgyzstan.dta" "Lebanon.dta" "Oman.dta" "Palestine.dta" "Qatar.dta" "Saudi Arabia.dta" "Turkey.dta" "United Areb Emirates.dta" "Yemen.dta", generate(Four_Down)
order Four_Down Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
export excel "一带一路沿线中亚进口Up.xlsx", firstrow(variables) replace
