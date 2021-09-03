/*
	Purpose		 : Convert country_HS4
	Author		 : Xinyi Zhang
	Date created : Aug.15, 2020
*/
******************************************************************************************************
************ 2020Export超过了32467行，STATA SE无法运行，需要换STATA M *************
******************************************************************************************************
clear all
cd "D:\Matlab\bin\Peking University\World Data"
import delimited "D:\Matlab\bin\Peking University\World Data\Bulgaria.csv", case(preserve)
rename CommodityCode HS4
rename Commodity Name4
keep HS4 Name4
sort HS4
duplicates drop HS4,force 
save "D:\Matlab\bin\Peking University\World Data\Four_Down\Bulgaria_HS4.dta", replace
save "D:\Matlab\bin\Peking University\World Data\Last_Three_Down\Bulgaria_HS4.dta", replace
save "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown\Bulgaria_HS4.dta", replace

clear all
cd "D:\Matlab\bin\Peking University\World Data"
import delimited "D:\Matlab\bin\Peking University\World Data\Chile.csv", case(preserve)
rename CommodityCode HS4
rename Commodity Name4
keep HS4 Name4
sort HS4
duplicates drop HS4,force 
save "D:\Matlab\bin\Peking University\World Data\Four_Down\Chile_HS4.dta", replace
save "D:\Matlab\bin\Peking University\World Data\Last_Three_Down\Chile_HS4.dta", replace
save "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown\Chile_HS4.dta", replace

clear all
cd "D:\Matlab\bin\Peking University\World Data"
import delimited "D:\Matlab\bin\Peking University\World Data\Greece.csv", case(preserve)
rename CommodityCode HS4
rename Commodity Name4
keep HS4 Name4
sort HS4
duplicates drop HS4,force 
save "D:\Matlab\bin\Peking University\World Data\Four_Down\Greece_HS4.dta", replace
save "D:\Matlab\bin\Peking University\World Data\Last_Three_Down\Greece_HS4.dta", replace
save "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown\Greece_HS4.dta", replace

clear all
cd "D:\Matlab\bin\Peking University\World Data"
import delimited "D:\Matlab\bin\Peking University\World Data\Hungary.csv", case(preserve)
rename CommodityCode HS4
rename Commodity Name4
keep HS4 Name4
sort HS4
duplicates drop HS4,force 
save "D:\Matlab\bin\Peking University\World Data\Four_Down\Hungary_HS4.dta", replace
save "D:\Matlab\bin\Peking University\World Data\Last_Three_Down\Hungary_HS4.dta", replace
save "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown\Hungary_HS4.dta", replace

clear all
cd "D:\Matlab\bin\Peking University\World Data"
import delimited "D:\Matlab\bin\Peking University\World Data\Latvia.csv", case(preserve)
rename CommodityCode HS4
rename Commodity Name4
keep HS4 Name4
sort HS4
duplicates drop HS4,force 
save "D:\Matlab\bin\Peking University\World Data\Four_Down\Latvia_HS4.dta", replace
save "D:\Matlab\bin\Peking University\World Data\Last_Three_Down\Latvia_HS4.dta", replace
save "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown\Latvia_HS4.dta", replace

clear all
cd "D:\Matlab\bin\Peking University\World Data"
import delimited "D:\Matlab\bin\Peking University\World Data\Malaysia.csv", case(preserve)
rename CommodityCode HS4
rename Commodity Name4
keep HS4 Name4
sort HS4
duplicates drop HS4,force 
save "D:\Matlab\bin\Peking University\World Data\Four_Down\Malaysia_HS4.dta", replace
save "D:\Matlab\bin\Peking University\World Data\Last_Three_Down\Malaysia_HS4.dta", replace
save "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown\Malaysia_HS4.dta", replace

clear all
cd "D:\Matlab\bin\Peking University\World Data"
import delimited "D:\Matlab\bin\Peking University\World Data\Poland.csv", case(preserve)
rename CommodityCode HS4
rename Commodity Name4
keep HS4 Name4
sort HS4
duplicates drop HS4,force 
save "D:\Matlab\bin\Peking University\World Data\Four_Down\Poland_HS4.dta", replace
save "D:\Matlab\bin\Peking University\World Data\Last_Three_Down\Poland_HS4.dta", replace
save "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown\Poland_HS4.dta", replace

clear all
cd "D:\Matlab\bin\Peking University\World Data"
import delimited "D:\Matlab\bin\Peking University\World Data\Romania.csv", case(preserve)
rename CommodityCode HS4
rename Commodity Name4
keep HS4 Name4
sort HS4
duplicates drop HS4,force 
save "D:\Matlab\bin\Peking University\World Data\Four_Down\Romania_HS4.dta", replace
save "D:\Matlab\bin\Peking University\World Data\Last_Three_Down\Romania_HS4.dta", replace
save "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown\Romania_HS4.dta", replace

clear all
cd "D:\Matlab\bin\Peking University\World Data"
import delimited "D:\Matlab\bin\Peking University\World Data\Russia.csv", case(preserve)
rename CommodityCode HS4
rename Commodity Name4
keep HS4 Name4
sort HS4
duplicates drop HS4,force 
save "D:\Matlab\bin\Peking University\World Data\Four_Down\Russia_HS4.dta", replace
save "D:\Matlab\bin\Peking University\World Data\Last_Three_Down\Russia_HS4.dta", replace
save "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown\Russia_HS4.dta", replace

clear all
cd "D:\Matlab\bin\Peking University\World Data"
import delimited "D:\Matlab\bin\Peking University\World Data\Turkey.csv", case(preserve)
rename CommodityCode HS4
rename Commodity Name4
keep HS4 Name4
sort HS4
duplicates drop HS4,force 
save "D:\Matlab\bin\Peking University\World Data\Four_Down\Turkey_HS4.dta", replace
save "D:\Matlab\bin\Peking University\World Data\Last_Three_Down\Turkey_HS4.dta", replace
save "D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown\Turkey_HS4.dta", replace