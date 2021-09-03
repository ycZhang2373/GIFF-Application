% M = readmatrix('Turkey.csv','Sheet','Turkey','Range','A1:E32')
clear all;clc;
data = readmatrix('Yemen.csv');
year = data(:,2);
hs = data(:,22);
value = data(:,32);
% [年份，HS4，贸易额]
D2016 = [year(find(year==2010)),hs(find(year==2010)),value(find(year==2010))];
D2013 = [year(find(year==2013)),hs(find(year==2013)),value(find(year==2013))];
D2016 = [year(find(year==2016)),hs(find(year==2016)),value(find(year==2016))];
D2019 = [year(find(year==2019)),hs(find(year==2019)),value(find(year==2019))];
% [HS4的并集]
m_hs = union(hs(find(year==2010)),hs(find(year==2013)));
m_hs = union(m_hs,hs(find(year==2016)));
m_hs = union(m_hs,hs(find(year==2019)));
% 记录HS4的长度
id = length(m_hs);
% matrix是最后要导出的总表
matrix = zeros(id+1,8);
matrix(1,2:5) = [2010,2013,2016,2019];
matrix(2:end,1) = m_hs;
list1 = [];
list2 = [];
list3 = [];
for i = 1:id
    if m_hs(i) == D2010(find(D2010(:,2)==m_hs(i)),2)
        matrix(i+1,2) = D2010(find(D2010(:,2)==m_hs(i)),3);
    else
        matrix(i+1,2) = 0;
    end
    if m_hs(i) == D2013(find(D2013(:,2)==m_hs(i)),2)
        matrix(i+1,3) = D2013(find(D2013(:,2)==m_hs(i)),3);
    else
        matrix(i+1,3) = 0;
    end
    if m_hs(i) == D2016(find(D2016(:,2)==m_hs(i)),2)
        matrix(i+1,4) = D2016(find(D2016(:,2)==m_hs(i)),3);
    else
        matrix(i+1,4) = 0;
    end
    if m_hs(i) == D2019(find(D2019(:,2)==m_hs(i)),2)
        matrix(i+1,5) = D2019(find(D2019(:,2)==m_hs(i)),3);
    else
        matrix(i,5) = 0;
    end
    if matrix(i+1,2)> 0
        matrix(i+1,6) = (matrix(i+1,3)/matrix(i+1,2))^(1/3) - 1;
        matrix(i+1,7) = (matrix(i+1,4)/matrix(i+1,2))^(1/6) - 1;
        matrix(i+1,8) = (matrix(i+1,5)/matrix(i+1,2))^(1/9) - 1;
    end
    if matrix(i+1,6)<=0 & matrix(i+1,7)>0 & matrix(i+1,8)>0
        list1 = [list1;[m_hs(i),matrix(i+1,6),matrix(i+1,7),matrix(i+1,8)]];
    elseif matrix(i+1,6)>=0 & matrix(i+1,7)>0 & matrix(i+1,8)>0
        list2 = [list2;[m_hs(i),matrix(i+1,6),matrix(i+1,7),matrix(i+1,8)]];
    end
end
xlswrite('Yemen.xlsx',matrix);
xlswrite('D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Three_Up\Yemen.xlsx',list1)
xlswrite('D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up\Yemen.xlsx',list2)


clear all;clc;
data = readmatrix('Chile.csv');
year = data(:,2);
hs = data(:,22);
value = data(:,32);
% [年份，HS4，贸易额]
D2016 = [year(find(year==2000)),hs(find(year==2000)),value(find(year==2000))];
D2013 = [year(find(year==2005)),hs(find(year==2005)),value(find(year==2005))];
D2016 = [year(find(year==2010)),hs(find(year==2010)),value(find(year==2010))];
D2015 = [year(find(year==2015)),hs(find(year==2015)),value(find(year==2015))];
D2019 = [year(find(year==2019)),hs(find(year==2019)),value(find(year==2019))];
% [HS4的并集]
m_hs = union(hs(find(year==2000)),hs(find(year==2005)));
m_hs = union(m_hs,hs(find(year==2010)));
m_hs = union(m_hs,hs(find(year==2015)));
m_hs = union(m_hs,hs(find(year==2019)));
% 记录HS4的长度
id = length(m_hs);
% matrix是最后要导出的总表
matrix = zeros(id+1,10);
matrix(1,2:6) = [2000,2005,2010,2015,2019];
matrix(2:end,1) = m_hs;
list1 = [];
list2 = [];
list3 = [];
for i = 1:id
    if m_hs(i) == D2016(find(D2016(:,2)==m_hs(i)),2)
        matrix(i+1,2) = D2016(find(D2016(:,2)==m_hs(i)),3);
    else
        matrix(i+1,2) = 0;
    end
    if m_hs(i) == D2013(find(D2013(:,2)==m_hs(i)),2)
        matrix(i+1,3) = D2013(find(D2013(:,2)==m_hs(i)),3);
    else
        matrix(i+1,3) = 0;
    end
    if m_hs(i) == D2016(find(D2016(:,2)==m_hs(i)),2)
        matrix(i+1,4) = D2016(find(D2016(:,2)==m_hs(i)),3);
    else
        matrix(i+1,4) = 0;
    end
    if m_hs(i) == D2015(find(D2015(:,2)==m_hs(i)),2)
        matrix(i+1,5) = D2015(find(D2015(:,2)==m_hs(i)),3);
    else
        matrix(i,5) = 0;
    end
    if m_hs(i) == D2019(find(D2019(:,2)==m_hs(i)),2)
        matrix(i+1,6) = D2019(find(D2019(:,2)==m_hs(i)),3);
    else
        matrix(i+1,6) = 0;
    end
    if matrix(i+1,2)> 0
        matrix(i+1,7) = (matrix(i+1,3)/matrix(i+1,2))^(1/5) - 1;
        matrix(i+1,8) = (matrix(i+1,4)/matrix(i+1,2))^(1/10) - 1;
        matrix(i+1,9) = (matrix(i+1,5)/matrix(i+1,2))^(1/15) - 1;
        matrix(i+1,10) = (matrix(i+1,6)/matrix(i+1,2))^(1/19) - 1;
    end
    if matrix(i+1,7)<0 & matrix(i+1,8)<0 & matrix(i+1,9)<0 & matrix(i+1,10)<0
        list1 = [list1;[m_hs(i),matrix(i+1,7),matrix(i+1,8),matrix(i+1,9),matrix(i+1,10)]];
    elseif matrix(i+1,7)>=0 & matrix(i+1,8)<0 & matrix(i+1,9)<0 & matrix(i+1,10)<0
        list2 = [list2;[m_hs(i),matrix(i+1,7),matrix(i+1,8),matrix(i+1,9),matrix(i+1,10)]];
    elseif matrix(i+1,7)>=0 & matrix(i+1,8)>=0 & matrix(i+1,9)<0 & matrix(i+1,10)<0
        list3 = [list3;[m_hs(i),matrix(i+1,7),matrix(i+1,8),matrix(i+1,9),matrix(i+1,10)]];
    end
end
xlswrite('Chile.xlsx',matrix);
xlswrite('D:\Matlab\bin\Peking University\World Data\Four_Down\Chile.xlsx',list1)
xlswrite('D:\Matlab\bin\Peking University\World Data\Last_Three_Down\Chile.xlsx',list2)
xlswrite('D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown\Chile.xlsx',list3)

clear all;clc;
data = readmatrix('Greece.csv');
year = data(:,2);
hs = data(:,22);
value = data(:,32);
% [年份，HS4，贸易额]
D2016 = [year(find(year==2000)),hs(find(year==2000)),value(find(year==2000))];
D2013 = [year(find(year==2005)),hs(find(year==2005)),value(find(year==2005))];
D2016 = [year(find(year==2010)),hs(find(year==2010)),value(find(year==2010))];
D2015 = [year(find(year==2015)),hs(find(year==2015)),value(find(year==2015))];
D2019 = [year(find(year==2019)),hs(find(year==2019)),value(find(year==2019))];
% [HS4的并集]
m_hs = union(hs(find(year==2000)),hs(find(year==2005)));
m_hs = union(m_hs,hs(find(year==2010)));
m_hs = union(m_hs,hs(find(year==2015)));
m_hs = union(m_hs,hs(find(year==2019)));
% 记录HS4的长度
id = length(m_hs);
% matrix是最后要导出的总表
matrix = zeros(id+1,10);
matrix(1,2:6) = [2000,2005,2010,2015,2019];
matrix(2:end,1) = m_hs;
list1 = [];
list2 = [];
list3 = [];
for i = 1:id
    if m_hs(i) == D2016(find(D2016(:,2)==m_hs(i)),2)
        matrix(i+1,2) = D2016(find(D2016(:,2)==m_hs(i)),3);
    else
        matrix(i+1,2) = 0;
    end
    if m_hs(i) == D2013(find(D2013(:,2)==m_hs(i)),2)
        matrix(i+1,3) = D2013(find(D2013(:,2)==m_hs(i)),3);
    else
        matrix(i+1,3) = 0;
    end
    if m_hs(i) == D2016(find(D2016(:,2)==m_hs(i)),2)
        matrix(i+1,4) = D2016(find(D2016(:,2)==m_hs(i)),3);
    else
        matrix(i+1,4) = 0;
    end
    if m_hs(i) == D2015(find(D2015(:,2)==m_hs(i)),2)
        matrix(i+1,5) = D2015(find(D2015(:,2)==m_hs(i)),3);
    else
        matrix(i,5) = 0;
    end
    if m_hs(i) == D2019(find(D2019(:,2)==m_hs(i)),2)
        matrix(i+1,6) = D2019(find(D2019(:,2)==m_hs(i)),3);
    else
        matrix(i+1,6) = 0;
    end
    if matrix(i+1,2)> 0
        matrix(i+1,7) = (matrix(i+1,3)/matrix(i+1,2))^(1/5) - 1;
        matrix(i+1,8) = (matrix(i+1,4)/matrix(i+1,2))^(1/10) - 1;
        matrix(i+1,9) = (matrix(i+1,5)/matrix(i+1,2))^(1/15) - 1;
        matrix(i+1,10) = (matrix(i+1,6)/matrix(i+1,2))^(1/19) - 1;
    end
    if matrix(i+1,7)<0 & matrix(i+1,8)<0 & matrix(i+1,9)<0 & matrix(i+1,10)<0
        list1 = [list1;[m_hs(i),matrix(i+1,7),matrix(i+1,8),matrix(i+1,9),matrix(i+1,10)]];
    elseif matrix(i+1,7)>=0 & matrix(i+1,8)<0 & matrix(i+1,9)<0 & matrix(i+1,10)<0
        list2 = [list2;[m_hs(i),matrix(i+1,7),matrix(i+1,8),matrix(i+1,9),matrix(i+1,10)]];
    elseif matrix(i+1,7)>=0 & matrix(i+1,8)>=0 & matrix(i+1,9)<0 & matrix(i+1,10)<0
        list3 = [list3;[m_hs(i),matrix(i+1,7),matrix(i+1,8),matrix(i+1,9),matrix(i+1,10)]];
    end
end
xlswrite('Greece.xlsx',matrix);
xlswrite('D:\Matlab\bin\Peking University\World Data\Four_Down\Greece.xlsx',list1)
xlswrite('D:\Matlab\bin\Peking University\World Data\Last_Three_Down\Greece.xlsx',list2)
xlswrite('D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown\Greece.xlsx',list3)

clear all;clc;
data = readmatrix('Hungary.csv');
year = data(:,2);
hs = data(:,22);
value = data(:,32);
% [年份，HS4，贸易额]
D2016 = [year(find(year==2000)),hs(find(year==2000)),value(find(year==2000))];
D2013 = [year(find(year==2005)),hs(find(year==2005)),value(find(year==2005))];
D2016 = [year(find(year==2010)),hs(find(year==2010)),value(find(year==2010))];
D2015 = [year(find(year==2015)),hs(find(year==2015)),value(find(year==2015))];
D2019 = [year(find(year==2019)),hs(find(year==2019)),value(find(year==2019))];
% [HS4的并集]
m_hs = union(hs(find(year==2000)),hs(find(year==2005)));
m_hs = union(m_hs,hs(find(year==2010)));
m_hs = union(m_hs,hs(find(year==2015)));
m_hs = union(m_hs,hs(find(year==2019)));
% 记录HS4的长度
id = length(m_hs);
% matrix是最后要导出的总表
matrix = zeros(id+1,10);
matrix(1,2:6) = [2000,2005,2010,2015,2019];
matrix(2:end,1) = m_hs;
list1 = [];
list2 = [];
list3 = [];
for i = 1:id
    if m_hs(i) == D2016(find(D2016(:,2)==m_hs(i)),2)
        matrix(i+1,2) = D2016(find(D2016(:,2)==m_hs(i)),3);
    else
        matrix(i+1,2) = 0;
    end
    if m_hs(i) == D2013(find(D2013(:,2)==m_hs(i)),2)
        matrix(i+1,3) = D2013(find(D2013(:,2)==m_hs(i)),3);
    else
        matrix(i+1,3) = 0;
    end
    if m_hs(i) == D2016(find(D2016(:,2)==m_hs(i)),2)
        matrix(i+1,4) = D2016(find(D2016(:,2)==m_hs(i)),3);
    else
        matrix(i+1,4) = 0;
    end
    if m_hs(i) == D2015(find(D2015(:,2)==m_hs(i)),2)
        matrix(i+1,5) = D2015(find(D2015(:,2)==m_hs(i)),3);
    else
        matrix(i,5) = 0;
    end
    if m_hs(i) == D2019(find(D2019(:,2)==m_hs(i)),2)
        matrix(i+1,6) = D2019(find(D2019(:,2)==m_hs(i)),3);
    else
        matrix(i+1,6) = 0;
    end
    if matrix(i+1,2)> 0
        matrix(i+1,7) = (matrix(i+1,3)/matrix(i+1,2))^(1/5) - 1;
        matrix(i+1,8) = (matrix(i+1,4)/matrix(i+1,2))^(1/10) - 1;
        matrix(i+1,9) = (matrix(i+1,5)/matrix(i+1,2))^(1/15) - 1;
        matrix(i+1,10) = (matrix(i+1,6)/matrix(i+1,2))^(1/19) - 1;
    end
    if matrix(i+1,7)<0 & matrix(i+1,8)<0 & matrix(i+1,9)<0 & matrix(i+1,10)<0
        list1 = [list1;[m_hs(i),matrix(i+1,7),matrix(i+1,8),matrix(i+1,9),matrix(i+1,10)]];
    elseif matrix(i+1,7)>=0 & matrix(i+1,8)<0 & matrix(i+1,9)<0 & matrix(i+1,10)<0
        list2 = [list2;[m_hs(i),matrix(i+1,7),matrix(i+1,8),matrix(i+1,9),matrix(i+1,10)]];
    elseif matrix(i+1,7)>=0 & matrix(i+1,8)>=0 & matrix(i+1,9)<0 & matrix(i+1,10)<0
        list3 = [list3;[m_hs(i),matrix(i+1,7),matrix(i+1,8),matrix(i+1,9),matrix(i+1,10)]];
    end
end
xlswrite('Hungary.xlsx',matrix);
xlswrite('D:\Matlab\bin\Peking University\World Data\Four_Down\Hungary.xlsx',list1)
xlswrite('D:\Matlab\bin\Peking University\World Data\Last_Three_Down\Hungary.xlsx',list2)
xlswrite('D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown\Hungary.xlsx',list3)

clear all;clc;
data = readmatrix('Latvia.csv');
year = data(:,2);
hs = data(:,22);
value = data(:,32);
% [年份，HS4，贸易额]
D2016 = [year(find(year==2000)),hs(find(year==2000)),value(find(year==2000))];
D2013 = [year(find(year==2005)),hs(find(year==2005)),value(find(year==2005))];
D2016 = [year(find(year==2010)),hs(find(year==2010)),value(find(year==2010))];
D2015 = [year(find(year==2015)),hs(find(year==2015)),value(find(year==2015))];
D2019 = [year(find(year==2019)),hs(find(year==2019)),value(find(year==2019))];
% [HS4的并集]
m_hs = union(hs(find(year==2000)),hs(find(year==2005)));
m_hs = union(m_hs,hs(find(year==2010)));
m_hs = union(m_hs,hs(find(year==2015)));
m_hs = union(m_hs,hs(find(year==2019)));
% 记录HS4的长度
id = length(m_hs);
% matrix是最后要导出的总表
matrix = zeros(id+1,10);
matrix(1,2:6) = [2000,2005,2010,2015,2019];
matrix(2:end,1) = m_hs;
list1 = [];
list2 = [];
list3 = [];
for i = 1:id
    if m_hs(i) == D2016(find(D2016(:,2)==m_hs(i)),2)
        matrix(i+1,2) = D2016(find(D2016(:,2)==m_hs(i)),3);
    else
        matrix(i+1,2) = 0;
    end
    if m_hs(i) == D2013(find(D2013(:,2)==m_hs(i)),2)
        matrix(i+1,3) = D2013(find(D2013(:,2)==m_hs(i)),3);
    else
        matrix(i+1,3) = 0;
    end
    if m_hs(i) == D2016(find(D2016(:,2)==m_hs(i)),2)
        matrix(i+1,4) = D2016(find(D2016(:,2)==m_hs(i)),3);
    else
        matrix(i+1,4) = 0;
    end
    if m_hs(i) == D2015(find(D2015(:,2)==m_hs(i)),2)
        matrix(i+1,5) = D2015(find(D2015(:,2)==m_hs(i)),3);
    else
        matrix(i,5) = 0;
    end
    if m_hs(i) == D2019(find(D2019(:,2)==m_hs(i)),2)
        matrix(i+1,6) = D2019(find(D2019(:,2)==m_hs(i)),3);
    else
        matrix(i+1,6) = 0;
    end
    if matrix(i+1,2)> 0
        matrix(i+1,7) = (matrix(i+1,3)/matrix(i+1,2))^(1/5) - 1;
        matrix(i+1,8) = (matrix(i+1,4)/matrix(i+1,2))^(1/10) - 1;
        matrix(i+1,9) = (matrix(i+1,5)/matrix(i+1,2))^(1/15) - 1;
        matrix(i+1,10) = (matrix(i+1,6)/matrix(i+1,2))^(1/19) - 1;
    end
    if matrix(i+1,7)<0 & matrix(i+1,8)<0 & matrix(i+1,9)<0 & matrix(i+1,10)<0
        list1 = [list1;[m_hs(i),matrix(i+1,7),matrix(i+1,8),matrix(i+1,9),matrix(i+1,10)]];
    elseif matrix(i+1,7)>=0 & matrix(i+1,8)<0 & matrix(i+1,9)<0 & matrix(i+1,10)<0
        list2 = [list2;[m_hs(i),matrix(i+1,7),matrix(i+1,8),matrix(i+1,9),matrix(i+1,10)]];
    elseif matrix(i+1,7)>=0 & matrix(i+1,8)>=0 & matrix(i+1,9)<0 & matrix(i+1,10)<0
        list3 = [list3;[m_hs(i),matrix(i+1,7),matrix(i+1,8),matrix(i+1,9),matrix(i+1,10)]];
    end
end
xlswrite('Latvia.xlsx',matrix);
xlswrite('D:\Matlab\bin\Peking University\World Data\Four_Down\Latvia.xlsx',list1)
xlswrite('D:\Matlab\bin\Peking University\World Data\Last_Three_Down\Latvia.xlsx',list2)
xlswrite('D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown\Latvia.xlsx',list3)

clear all;clc;
data = readmatrix('Malaysia.csv');
year = data(:,2);
hs = data(:,22);
value = data(:,32);
% [年份，HS4，贸易额]
D2016 = [year(find(year==2000)),hs(find(year==2000)),value(find(year==2000))];
D2013 = [year(find(year==2005)),hs(find(year==2005)),value(find(year==2005))];
D2016 = [year(find(year==2010)),hs(find(year==2010)),value(find(year==2010))];
D2015 = [year(find(year==2015)),hs(find(year==2015)),value(find(year==2015))];
D2019 = [year(find(year==2019)),hs(find(year==2019)),value(find(year==2019))];
% [HS4的并集]
m_hs = union(hs(find(year==2000)),hs(find(year==2005)));
m_hs = union(m_hs,hs(find(year==2010)));
m_hs = union(m_hs,hs(find(year==2015)));
m_hs = union(m_hs,hs(find(year==2019)));
% 记录HS4的长度
id = length(m_hs);
% matrix是最后要导出的总表
matrix = zeros(id+1,10);
matrix(1,2:6) = [2000,2005,2010,2015,2019];
matrix(2:end,1) = m_hs;
list1 = [];
list2 = [];
list3 = [];
for i = 1:id
    if m_hs(i) == D2016(find(D2016(:,2)==m_hs(i)),2)
        matrix(i+1,2) = D2016(find(D2016(:,2)==m_hs(i)),3);
    else
        matrix(i+1,2) = 0;
    end
    if m_hs(i) == D2013(find(D2013(:,2)==m_hs(i)),2)
        matrix(i+1,3) = D2013(find(D2013(:,2)==m_hs(i)),3);
    else
        matrix(i+1,3) = 0;
    end
    if m_hs(i) == D2016(find(D2016(:,2)==m_hs(i)),2)
        matrix(i+1,4) = D2016(find(D2016(:,2)==m_hs(i)),3);
    else
        matrix(i+1,4) = 0;
    end
    if m_hs(i) == D2015(find(D2015(:,2)==m_hs(i)),2)
        matrix(i+1,5) = D2015(find(D2015(:,2)==m_hs(i)),3);
    else
        matrix(i,5) = 0;
    end
    if m_hs(i) == D2019(find(D2019(:,2)==m_hs(i)),2)
        matrix(i+1,6) = D2019(find(D2019(:,2)==m_hs(i)),3);
    else
        matrix(i+1,6) = 0;
    end
    if matrix(i+1,2)> 0
        matrix(i+1,7) = (matrix(i+1,3)/matrix(i+1,2))^(1/5) - 1;
        matrix(i+1,8) = (matrix(i+1,4)/matrix(i+1,2))^(1/10) - 1;
        matrix(i+1,9) = (matrix(i+1,5)/matrix(i+1,2))^(1/15) - 1;
        matrix(i+1,10) = (matrix(i+1,6)/matrix(i+1,2))^(1/19) - 1;
    end
    if matrix(i+1,7)<0 & matrix(i+1,8)<0 & matrix(i+1,9)<0 & matrix(i+1,10)<0
        list1 = [list1;[m_hs(i),matrix(i+1,7),matrix(i+1,8),matrix(i+1,9),matrix(i+1,10)]];
    elseif matrix(i+1,7)>=0 & matrix(i+1,8)<0 & matrix(i+1,9)<0 & matrix(i+1,10)<0
        list2 = [list2;[m_hs(i),matrix(i+1,7),matrix(i+1,8),matrix(i+1,9),matrix(i+1,10)]];
    elseif matrix(i+1,7)>=0 & matrix(i+1,8)>=0 & matrix(i+1,9)<0 & matrix(i+1,10)<0
        list3 = [list3;[m_hs(i),matrix(i+1,7),matrix(i+1,8),matrix(i+1,9),matrix(i+1,10)]];
    end
end
xlswrite('Malaysia.xlsx',matrix);
xlswrite('D:\Matlab\bin\Peking University\World Data\Four_Down\Malaysia.xlsx',list1)
xlswrite('D:\Matlab\bin\Peking University\World Data\Last_Three_Down\Malaysia.xlsx',list2)
xlswrite('D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown\Malaysia.xlsx',list3)

clear all;clc;
data = readmatrix('Poland.csv');
year = data(:,2);
hs = data(:,22);
value = data(:,32);
% [年份，HS4，贸易额]
D2016 = [year(find(year==2000)),hs(find(year==2000)),value(find(year==2000))];
D2013 = [year(find(year==2005)),hs(find(year==2005)),value(find(year==2005))];
D2016 = [year(find(year==2010)),hs(find(year==2010)),value(find(year==2010))];
D2015 = [year(find(year==2015)),hs(find(year==2015)),value(find(year==2015))];
D2019 = [year(find(year==2019)),hs(find(year==2019)),value(find(year==2019))];
% [HS4的并集]
m_hs = union(hs(find(year==2000)),hs(find(year==2005)));
m_hs = union(m_hs,hs(find(year==2010)));
m_hs = union(m_hs,hs(find(year==2015)));
m_hs = union(m_hs,hs(find(year==2019)));
% 记录HS4的长度
id = length(m_hs);
% matrix是最后要导出的总表
matrix = zeros(id+1,10);
matrix(1,2:6) = [2000,2005,2010,2015,2019];
matrix(2:end,1) = m_hs;
list1 = [];
list2 = [];
list3 = [];
for i = 1:id
    if m_hs(i) == D2016(find(D2016(:,2)==m_hs(i)),2)
        matrix(i+1,2) = D2016(find(D2016(:,2)==m_hs(i)),3);
    else
        matrix(i+1,2) = 0;
    end
    if m_hs(i) == D2013(find(D2013(:,2)==m_hs(i)),2)
        matrix(i+1,3) = D2013(find(D2013(:,2)==m_hs(i)),3);
    else
        matrix(i+1,3) = 0;
    end
    if m_hs(i) == D2016(find(D2016(:,2)==m_hs(i)),2)
        matrix(i+1,4) = D2016(find(D2016(:,2)==m_hs(i)),3);
    else
        matrix(i+1,4) = 0;
    end
    if m_hs(i) == D2015(find(D2015(:,2)==m_hs(i)),2)
        matrix(i+1,5) = D2015(find(D2015(:,2)==m_hs(i)),3);
    else
        matrix(i,5) = 0;
    end
    if m_hs(i) == D2019(find(D2019(:,2)==m_hs(i)),2)
        matrix(i+1,6) = D2019(find(D2019(:,2)==m_hs(i)),3);
    else
        matrix(i+1,6) = 0;
    end
    if matrix(i+1,2)> 0
        matrix(i+1,7) = (matrix(i+1,3)/matrix(i+1,2))^(1/5) - 1;
        matrix(i+1,8) = (matrix(i+1,4)/matrix(i+1,2))^(1/10) - 1;
        matrix(i+1,9) = (matrix(i+1,5)/matrix(i+1,2))^(1/15) - 1;
        matrix(i+1,10) = (matrix(i+1,6)/matrix(i+1,2))^(1/19) - 1;
    end
    if matrix(i+1,7)<0 & matrix(i+1,8)<0 & matrix(i+1,9)<0 & matrix(i+1,10)<0
        list1 = [list1;[m_hs(i),matrix(i+1,7),matrix(i+1,8),matrix(i+1,9),matrix(i+1,10)]];
    elseif matrix(i+1,7)>=0 & matrix(i+1,8)<0 & matrix(i+1,9)<0 & matrix(i+1,10)<0
        list2 = [list2;[m_hs(i),matrix(i+1,7),matrix(i+1,8),matrix(i+1,9),matrix(i+1,10)]];
    elseif matrix(i+1,7)>=0 & matrix(i+1,8)>=0 & matrix(i+1,9)<0 & matrix(i+1,10)<0
        list3 = [list3;[m_hs(i),matrix(i+1,7),matrix(i+1,8),matrix(i+1,9),matrix(i+1,10)]];
    end
end
xlswrite('Poland.xlsx',matrix);
xlswrite('D:\Matlab\bin\Peking University\World Data\Four_Down\Poland.xlsx',list1)
xlswrite('D:\Matlab\bin\Peking University\World Data\Last_Three_Down\Poland.xlsx',list2)
xlswrite('D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown\Poland.xlsx',list3)

clear all;clc;
data = readmatrix('Romania.csv');
year = data(:,2);
hs = data(:,22);
value = data(:,32);
% [年份，HS4，贸易额]
D2016 = [year(find(year==2000)),hs(find(year==2000)),value(find(year==2000))];
D2013 = [year(find(year==2005)),hs(find(year==2005)),value(find(year==2005))];
D2016 = [year(find(year==2010)),hs(find(year==2010)),value(find(year==2010))];
D2015 = [year(find(year==2015)),hs(find(year==2015)),value(find(year==2015))];
D2019 = [year(find(year==2019)),hs(find(year==2019)),value(find(year==2019))];
% [HS4的并集]
m_hs = union(hs(find(year==2000)),hs(find(year==2005)));
m_hs = union(m_hs,hs(find(year==2010)));
m_hs = union(m_hs,hs(find(year==2015)));
m_hs = union(m_hs,hs(find(year==2019)));
% 记录HS4的长度
id = length(m_hs);
% matrix是最后要导出的总表
matrix = zeros(id+1,10);
matrix(1,2:6) = [2000,2005,2010,2015,2019];
matrix(2:end,1) = m_hs;
list1 = [];
list2 = [];
list3 = [];
for i = 1:id
    if m_hs(i) == D2016(find(D2016(:,2)==m_hs(i)),2)
        matrix(i+1,2) = D2016(find(D2016(:,2)==m_hs(i)),3);
    else
        matrix(i+1,2) = 0;
    end
    if m_hs(i) == D2013(find(D2013(:,2)==m_hs(i)),2)
        matrix(i+1,3) = D2013(find(D2013(:,2)==m_hs(i)),3);
    else
        matrix(i+1,3) = 0;
    end
    if m_hs(i) == D2016(find(D2016(:,2)==m_hs(i)),2)
        matrix(i+1,4) = D2016(find(D2016(:,2)==m_hs(i)),3);
    else
        matrix(i+1,4) = 0;
    end
    if m_hs(i) == D2015(find(D2015(:,2)==m_hs(i)),2)
        matrix(i+1,5) = D2015(find(D2015(:,2)==m_hs(i)),3);
    else
        matrix(i,5) = 0;
    end
    if m_hs(i) == D2019(find(D2019(:,2)==m_hs(i)),2)
        matrix(i+1,6) = D2019(find(D2019(:,2)==m_hs(i)),3);
    else
        matrix(i+1,6) = 0;
    end
    if matrix(i+1,2)> 0
        matrix(i+1,7) = (matrix(i+1,3)/matrix(i+1,2))^(1/5) - 1;
        matrix(i+1,8) = (matrix(i+1,4)/matrix(i+1,2))^(1/10) - 1;
        matrix(i+1,9) = (matrix(i+1,5)/matrix(i+1,2))^(1/15) - 1;
        matrix(i+1,10) = (matrix(i+1,6)/matrix(i+1,2))^(1/19) - 1;
    end
    if matrix(i+1,7)<0 & matrix(i+1,8)<0 & matrix(i+1,9)<0 & matrix(i+1,10)<0
        list1 = [list1;[m_hs(i),matrix(i+1,7),matrix(i+1,8),matrix(i+1,9),matrix(i+1,10)]];
    elseif matrix(i+1,7)>=0 & matrix(i+1,8)<0 & matrix(i+1,9)<0 & matrix(i+1,10)<0
        list2 = [list2;[m_hs(i),matrix(i+1,7),matrix(i+1,8),matrix(i+1,9),matrix(i+1,10)]];
    elseif matrix(i+1,7)>=0 & matrix(i+1,8)>=0 & matrix(i+1,9)<0 & matrix(i+1,10)<0
        list3 = [list3;[m_hs(i),matrix(i+1,7),matrix(i+1,8),matrix(i+1,9),matrix(i+1,10)]];
    end
end
xlswrite('Romania.xlsx',matrix);
xlswrite('D:\Matlab\bin\Peking University\World Data\Four_Down\Romania.xlsx',list1)
xlswrite('D:\Matlab\bin\Peking University\World Data\Last_Three_Down\Romania.xlsx',list2)
xlswrite('D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown\Romania.xlsx',list3)

clear all;clc;
data = readmatrix('Russia.csv');
year = data(:,2);
hs = data(:,22);
value = data(:,32);
% [年份，HS4，贸易额]
D2016 = [year(find(year==2000)),hs(find(year==2000)),value(find(year==2000))];
D2013 = [year(find(year==2005)),hs(find(year==2005)),value(find(year==2005))];
D2016 = [year(find(year==2010)),hs(find(year==2010)),value(find(year==2010))];
D2015 = [year(find(year==2015)),hs(find(year==2015)),value(find(year==2015))];
D2019 = [year(find(year==2019)),hs(find(year==2019)),value(find(year==2019))];
% [HS4的并集]
m_hs = union(hs(find(year==2000)),hs(find(year==2005)));
m_hs = union(m_hs,hs(find(year==2010)));
m_hs = union(m_hs,hs(find(year==2015)));
m_hs = union(m_hs,hs(find(year==2019)));
% 记录HS4的长度
id = length(m_hs);
% matrix是最后要导出的总表
matrix = zeros(id+1,10);
matrix(1,2:6) = [2000,2005,2010,2015,2019];
matrix(2:end,1) = m_hs;
list1 = [];
list2 = [];
list3 = [];
for i = 1:id
    if m_hs(i) == D2016(find(D2016(:,2)==m_hs(i)),2)
        matrix(i+1,2) = D2016(find(D2016(:,2)==m_hs(i)),3);
    else
        matrix(i+1,2) = 0;
    end
    if m_hs(i) == D2013(find(D2013(:,2)==m_hs(i)),2)
        matrix(i+1,3) = D2013(find(D2013(:,2)==m_hs(i)),3);
    else
        matrix(i+1,3) = 0;
    end
    if m_hs(i) == D2016(find(D2016(:,2)==m_hs(i)),2)
        matrix(i+1,4) = D2016(find(D2016(:,2)==m_hs(i)),3);
    else
        matrix(i+1,4) = 0;
    end
    if m_hs(i) == D2015(find(D2015(:,2)==m_hs(i)),2)
        matrix(i+1,5) = D2015(find(D2015(:,2)==m_hs(i)),3);
    else
        matrix(i,5) = 0;
    end
    if m_hs(i) == D2019(find(D2019(:,2)==m_hs(i)),2)
        matrix(i+1,6) = D2019(find(D2019(:,2)==m_hs(i)),3);
    else
        matrix(i+1,6) = 0;
    end
    if matrix(i+1,2)> 0
        matrix(i+1,7) = (matrix(i+1,3)/matrix(i+1,2))^(1/5) - 1;
        matrix(i+1,8) = (matrix(i+1,4)/matrix(i+1,2))^(1/10) - 1;
        matrix(i+1,9) = (matrix(i+1,5)/matrix(i+1,2))^(1/15) - 1;
        matrix(i+1,10) = (matrix(i+1,6)/matrix(i+1,2))^(1/19) - 1;
    end
    if matrix(i+1,7)<0 & matrix(i+1,8)<0 & matrix(i+1,9)<0 & matrix(i+1,10)<0
        list1 = [list1;[m_hs(i),matrix(i+1,7),matrix(i+1,8),matrix(i+1,9),matrix(i+1,10)]];
    elseif matrix(i+1,7)>=0 & matrix(i+1,8)<0 & matrix(i+1,9)<0 & matrix(i+1,10)<0
        list2 = [list2;[m_hs(i),matrix(i+1,7),matrix(i+1,8),matrix(i+1,9),matrix(i+1,10)]];
    elseif matrix(i+1,7)>=0 & matrix(i+1,8)>=0 & matrix(i+1,9)<0 & matrix(i+1,10)<0
        list3 = [list3;[m_hs(i),matrix(i+1,7),matrix(i+1,8),matrix(i+1,9),matrix(i+1,10)]];
    end
end
xlswrite('Russia.xlsx',matrix);
xlswrite('D:\Matlab\bin\Peking University\World Data\Four_Down\Russia.xlsx',list1)
xlswrite('D:\Matlab\bin\Peking University\World Data\Last_Three_Down\Russia.xlsx',list2)
xlswrite('D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown\Russia.xlsx',list3)

clear all;clc;
data = readmatrix('Turkey.csv');
year = data(:,2);
hs = data(:,22);
value = data(:,32);
% [年份，HS4，贸易额]
D2016 = [year(find(year==2000)),hs(find(year==2000)),value(find(year==2000))];
D2013 = [year(find(year==2005)),hs(find(year==2005)),value(find(year==2005))];
D2016 = [year(find(year==2010)),hs(find(year==2010)),value(find(year==2010))];
D2015 = [year(find(year==2015)),hs(find(year==2015)),value(find(year==2015))];
D2019 = [year(find(year==2019)),hs(find(year==2019)),value(find(year==2019))];
% [HS4的并集]
m_hs = union(hs(find(year==2000)),hs(find(year==2005)));
m_hs = union(m_hs,hs(find(year==2010)));
m_hs = union(m_hs,hs(find(year==2015)));
m_hs = union(m_hs,hs(find(year==2019)));
% 记录HS4的长度
id = length(m_hs);
% matrix是最后要导出的总表
matrix = zeros(id+1,10);
matrix(1,2:6) = [2000,2005,2010,2015,2019];
matrix(2:end,1) = m_hs;
list1 = [];
list2 = [];
list3 = [];
for i = 1:id
    if m_hs(i) == D2016(find(D2016(:,2)==m_hs(i)),2)
        matrix(i+1,2) = D2016(find(D2016(:,2)==m_hs(i)),3);
    else
        matrix(i+1,2) = 0;
    end
    if m_hs(i) == D2013(find(D2013(:,2)==m_hs(i)),2)
        matrix(i+1,3) = D2013(find(D2013(:,2)==m_hs(i)),3);
    else
        matrix(i+1,3) = 0;
    end
    if m_hs(i) == D2016(find(D2016(:,2)==m_hs(i)),2)
        matrix(i+1,4) = D2016(find(D2016(:,2)==m_hs(i)),3);
    else
        matrix(i+1,4) = 0;
    end
    if m_hs(i) == D2015(find(D2015(:,2)==m_hs(i)),2)
        matrix(i+1,5) = D2015(find(D2015(:,2)==m_hs(i)),3);
    else
        matrix(i,5) = 0;
    end
    if m_hs(i) == D2019(find(D2019(:,2)==m_hs(i)),2)
        matrix(i+1,6) = D2019(find(D2019(:,2)==m_hs(i)),3);
    else
        matrix(i+1,6) = 0;
    end
    if matrix(i+1,2)> 0
        matrix(i+1,7) = (matrix(i+1,3)/matrix(i+1,2))^(1/5) - 1;
        matrix(i+1,8) = (matrix(i+1,4)/matrix(i+1,2))^(1/10) - 1;
        matrix(i+1,9) = (matrix(i+1,5)/matrix(i+1,2))^(1/15) - 1;
        matrix(i+1,10) = (matrix(i+1,6)/matrix(i+1,2))^(1/19) - 1;
    end
    if matrix(i+1,7)<0 & matrix(i+1,8)<0 & matrix(i+1,9)<0 & matrix(i+1,10)<0
        list1 = [list1;[m_hs(i),matrix(i+1,7),matrix(i+1,8),matrix(i+1,9),matrix(i+1,10)]];
    elseif matrix(i+1,7)>=0 & matrix(i+1,8)<0 & matrix(i+1,9)<0 & matrix(i+1,10)<0
        list2 = [list2;[m_hs(i),matrix(i+1,7),matrix(i+1,8),matrix(i+1,9),matrix(i+1,10)]];
    elseif matrix(i+1,7)>=0 & matrix(i+1,8)>=0 & matrix(i+1,9)<0 & matrix(i+1,10)<0
        list3 = [list3;[m_hs(i),matrix(i+1,7),matrix(i+1,8),matrix(i+1,9),matrix(i+1,10)]];
    end
end
xlswrite('Turkey.xlsx',matrix);
xlswrite('D:\Matlab\bin\Peking University\World Data\Four_Down\Turkey.xlsx',list1)
xlswrite('D:\Matlab\bin\Peking University\World Data\Last_Three_Down\Turkey.xlsx',list2)
xlswrite('D:\Matlab\bin\Peking University\World Data\TwoUp_TwoDown\Turkey.xlsx',list3)

