
*****Stata进行模糊匹配******

clear all
cd "D:\Matlab\bin\Peking University\伊犁州出口"
import excel "D:\Matlab\bin\Peking University\伊犁州出口\伊犁州商品字典.xlsx", sheet("Sheet2") firstrow
save HS8.dta, replace
clear all
import excel "D:\Matlab\bin\Peking University\伊犁州出口\伊犁州商品字典.xlsx", sheet("Sheet1") firstrow
matchit Order Firm using HS8.dta , idusing(HS8) txtusing(ch_Name8) override  //模糊匹配并打分
gsort Order -similscore      // 保留order，筛选最大值]
duplicates drop Order Firm,force   //将除去最大值的数据都删除
export excel using "D:\Matlab\bin\Peking University\伊犁州出口\伊犁州本地企业出口商品代码匹配.xls", sheetreplace firstrow(variables)


