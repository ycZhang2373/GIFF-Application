/*
	Purpose		 : Convert HS8 to HS4
	Author		 : Xinyi Zhang
	Date created : Aug.15, 2020
*/
******************************************************************************************************
********************************* 欧洲 连续三年进口上升 ****************************************
******************************************************************************************************

clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP"
import excel "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP\Albania.xlsx", sheet("Sheet1") 
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
generate str Country = "Albania", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Albania", replace

clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP"
import excel "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP\Austria.xlsx", sheet("Sheet1") 
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
generate str Country = "Austria", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Austria", replace

clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP"
import excel "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP\Belarus.xlsx", sheet("Sheet1") 
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
generate str Country = "Balarus", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Belarus", replace


clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP"
import excel "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP\Bosnia.xlsx", sheet("Sheet1") 
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
generate str Country = "Bosnia", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Bosnia", replace


clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_Up"
import excel "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP\Bulgaria.xlsx", sheet("Sheet1") 
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
generate str Country = "Bulgaria", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Bulgaria", replace


clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP"
import excel "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP\Czech.xlsx", sheet("Sheet1") 
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
generate str Country = "Czech", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Czech", replace


clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP"
import excel "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP\Estonia.xlsx", sheet("Sheet1") 
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
generate str Country = "Estonia", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Estonia", replace


clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP"
import excel "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP\Germany.xlsx", sheet("Sheet1") 
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
generate str Country = "Germany", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Germany", replace


clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP"
import excel "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP\Greece.xlsx", sheet("Sheet1") 
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
generate str Country = "Greece", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Greece", replace


clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP"
import excel "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP\Hungary.xlsx", sheet("Sheet1") 
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
generate str Country = "Hungary", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Hungary", replace


clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP"
import excel "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP\Italy.xlsx", sheet("Sheet1") 
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
generate str Country = "Italy", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Italy", replace


clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP"
import excel "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP\Kazakhstan.xlsx", sheet("Sheet1") 
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
generate str Country = "Kazakhstan", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Kazakhstan", replace


clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP"
import excel "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP\Latvia.xlsx", sheet("Sheet1") 
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
generate str Country = "Latvia", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Latvia", replace


clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP"
import excel "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP\Lithuania.xlsx", sheet("Sheet1") 
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
generate str Country = "Lithuania", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Lithuania", replace


clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP"
import excel "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP\Macedonia.xlsx", sheet("Sheet1") 
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
generate str Country = "Macedonia", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Macedonia", replace


clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP"
import excel "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP\Moldova.xlsx", sheet("Sheet1") 
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
generate str Country = "Moldova", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Moldova", replace


clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP"
import excel "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP\Montenegro.xlsx", sheet("Sheet1") 
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
generate str Country = "Montenegro", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Montenegro", replace


clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP"
import excel "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP\Poland.xlsx", sheet("Sheet1") 
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
generate str Country = "Poland", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Poland", replace


clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP"
import excel "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP\Romania.xlsx", sheet("Sheet1") 
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
generate str Country = "Romania", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Romania", replace


clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP"
import excel "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP\Serbia.xlsx", sheet("Sheet1") 
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
generate str Country = "Serbia", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Serbia", replace


clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP"
import excel "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP\Slovakia.xlsx", sheet("Sheet1") 
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
generate str Country = "Slovakia", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Slovakia", replace


clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP"
import excel "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP\Slovenia.xlsx", sheet("Sheet1") 
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
generate str Country = "Slovenia", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Slovenia", replace


clear all
cd "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP"
import excel "D:\Matlab\bin\Peking University\World Data进口\Europe\Three_UP\Ukraine.xlsx", sheet("Sheet1") 
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
generate str Country = "Ukraine", before(HS4)
order Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
save "Ukraine", replace

clear all
append using "Albania.dta" "Austria.dta" "Belarus.dta" "Bosnia.dta" "Bulgaria.dta" "Czech.dta" "Estonia.dta" "Germany.dta" "Greece.dta" "Hungary.dta" "Italy.dta" "Kazakhstan.dta" "Latvia.dta" "Lithuania.dta" "Macedonia.dta" "Moldova.dta" "Montenegro.dta" "Poland.dta" "Romania.dta" "Serbia.dta" "Slovakia.dta" "Slovenia.dta" "Ukraine.dta", generate(Four_Down)
order Four_Down Country HS4 ch_Name4 Trade2010 Trade2013 Trade2016 Trade2019 Growth2013 Growth2016 Growth2019
export excel "一带一路沿线欧洲国家进口Three Up.xlsx", firstrow(variables) replace
