% M = readmatrix('Turkey.csv','Sheet','Turkey','Range','A1:E32') 
% Bahrain(2018 replace 2019)
% Iran (2018 replace 2019)
% oman (2018 replace 2019)
% Yemen (2015 replace 2016)
% lebanon (2018 replace 2019)
clear all;clc;
data = readmatrix('armenia.csv');
year = data(:,2);
hs = data(:,22);
value = data(:,32);
% [年份，HS4，贸易额]
D2010 = [year(find(year==2010)),hs(find(year==2010)),value(find(year==2010))];
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
        matrix(i+1,5) = 0;
    end
    matrix(i+1,6) = (matrix(i+1,3)/matrix(i+1,2))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    matrix(i+1,7) = (matrix(i+1,4)/matrix(i+1,3))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    matrix(i+1,8) = (matrix(i+1,5)/matrix(i+1,4))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    if matrix(i+1,6)>0 & matrix(i+1,7)>0 & matrix(i+1,8)>0
        list1 = [list1;[m_hs(i),matrix(i+1,2),matrix(i+1,3),matrix(i+1,4),matrix(i+1,5),matrix(i+1,6),matrix(i+1,7),matrix(i+1,8)]];
    end
    if matrix(i+1,5)>matrix(i+1,2)
        list2 = [list2;[m_hs(i),matrix(i+1,2),matrix(i+1,3),matrix(i+1,4),matrix(i+1,5),matrix(i+1,6),matrix(i+1,7),matrix(i+1,8)]];
    end
end
xlswrite('armania.xlsx',matrix);
xlswrite('D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Three_Up\armania.xlsx',list1)
xlswrite('D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up\armania.xlsx',list2)

clear all;clc;
data = readmatrix('azerbaijan.csv');
year = data(:,2);
hs = data(:,22);
value = data(:,32);
% [年份，HS4，贸易额]
D2010 = [year(find(year==2010)),hs(find(year==2010)),value(find(year==2010))];
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
        matrix(i+1,5) = 0;
    end
    matrix(i+1,6) = (matrix(i+1,3)/matrix(i+1,2))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    matrix(i+1,7) = (matrix(i+1,4)/matrix(i+1,3))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    matrix(i+1,8) = (matrix(i+1,5)/matrix(i+1,4))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    if matrix(i+1,6)>0 & matrix(i+1,7)>0 & matrix(i+1,8)>0
        list1 = [list1;[m_hs(i),matrix(i+1,2),matrix(i+1,3),matrix(i+1,4),matrix(i+1,5),matrix(i+1,6),matrix(i+1,7),matrix(i+1,8)]];
    end
    if matrix(i+1,5)>matrix(i+1,2)
        list2 = [list2;[m_hs(i),matrix(i+1,2),matrix(i+1,3),matrix(i+1,4),matrix(i+1,5),matrix(i+1,6),matrix(i+1,7),matrix(i+1,8)]];
    end
end
xlswrite('azerbaijan.xlsx',matrix);
xlswrite('D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Three_Up\azerbaijan.xlsx',list1)
xlswrite('D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up\azerbaijan.xlsx',list2)

%% Bahrain(2018 replace 2019)
clear all;clc;
data = readmatrix('bahrain.csv');
year = data(:,2);
hs = data(:,22);
value = data(:,32);
% [年份，HS4，贸易额]
D2010 = [year(find(year==2010)),hs(find(year==2010)),value(find(year==2010))];
D2013 = [year(find(year==2013)),hs(find(year==2013)),value(find(year==2013))];
D2016 = [year(find(year==2016)),hs(find(year==2016)),value(find(year==2016))];
D2018 = [year(find(year==2018)),hs(find(year==2018)),value(find(year==2018))];
% [HS4的并集]
m_hs = union(hs(find(year==2010)),hs(find(year==2013)));
m_hs = union(m_hs,hs(find(year==2016)));
m_hs = union(m_hs,hs(find(year==2018)));
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
    if m_hs(i) == D2018(find(D2018(:,2)==m_hs(i)),2)
        matrix(i+1,5) = D2018(find(D2018(:,2)==m_hs(i)),3);
    else
        matrix(i+1,5) = 0;
    end
    matrix(i+1,6) = (matrix(i+1,3)/matrix(i+1,2))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    matrix(i+1,7) = (matrix(i+1,4)/matrix(i+1,3))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    matrix(i+1,8) = (matrix(i+1,5)/matrix(i+1,4))^(1/2) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    if matrix(i+1,6)>0 & matrix(i+1,7)>0 & matrix(i+1,8)>0
        list1 = [list1;[m_hs(i),matrix(i+1,2),matrix(i+1,3),matrix(i+1,4),matrix(i+1,5),matrix(i+1,6),matrix(i+1,7),matrix(i+1,8)]];
    end
    if matrix(i+1,5)>matrix(i+1,2)
        list2 = [list2;[m_hs(i),matrix(i+1,2),matrix(i+1,3),matrix(i+1,4),matrix(i+1,5),matrix(i+1,6),matrix(i+1,7),matrix(i+1,8)]];
    end
end
xlswrite('bahrain.xlsx',matrix);
xlswrite('D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Three_Up\bahrain.xlsx',list1)
xlswrite('D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up\bahrain.xlsx',list2)


clear all;clc;
data = readmatrix('cyprus.csv');
year = data(:,2);
hs = data(:,22);
value = data(:,32);
% [年份，HS4，贸易额]
D2010 = [year(find(year==2010)),hs(find(year==2010)),value(find(year==2010))];
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
        matrix(i+1,5) = 0;
    end
    matrix(i+1,6) = (matrix(i+1,3)/matrix(i+1,2))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    matrix(i+1,7) = (matrix(i+1,4)/matrix(i+1,3))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    matrix(i+1,8) = (matrix(i+1,5)/matrix(i+1,4))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    if matrix(i+1,6)>0 & matrix(i+1,7)>0 & matrix(i+1,8)>0
        list1 = [list1;[m_hs(i),matrix(i+1,2),matrix(i+1,3),matrix(i+1,4),matrix(i+1,5),matrix(i+1,6),matrix(i+1,7),matrix(i+1,8)]];
    end
    if matrix(i+1,5)>matrix(i+1,2)
        list2 = [list2;[m_hs(i),matrix(i+1,2),matrix(i+1,3),matrix(i+1,4),matrix(i+1,5),matrix(i+1,6),matrix(i+1,7),matrix(i+1,8)]];
    end
end
xlswrite('cyprus.xlsx',matrix);
xlswrite('D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Three_Up\cyprus.xlsx',list1)
xlswrite('D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up\cyprus.xlsx',list2)


clear all;clc;
data = readmatrix('Georgia.csv');
year = data(:,2);
hs = data(:,22);
value = data(:,32);
% [年份，HS4，贸易额]
D2010 = [year(find(year==2010)),hs(find(year==2010)),value(find(year==2010))];
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
        matrix(i+1,5) = 0;
    end
    matrix(i+1,6) = (matrix(i+1,3)/matrix(i+1,2))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    matrix(i+1,7) = (matrix(i+1,4)/matrix(i+1,3))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    matrix(i+1,8) = (matrix(i+1,5)/matrix(i+1,4))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    if matrix(i+1,6)>0 & matrix(i+1,7)>0 & matrix(i+1,8)>0
        list1 = [list1;[m_hs(i),matrix(i+1,2),matrix(i+1,3),matrix(i+1,4),matrix(i+1,5),matrix(i+1,6),matrix(i+1,7),matrix(i+1,8)]];
    end
    if matrix(i+1,5)>matrix(i+1,2)
        list2 = [list2;[m_hs(i),matrix(i+1,2),matrix(i+1,3),matrix(i+1,4),matrix(i+1,5),matrix(i+1,6),matrix(i+1,7),matrix(i+1,8)]];
    end
end
xlswrite('Georgia.xlsx',matrix);
xlswrite('D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Three_Up\Georgia.xlsx',list1)
xlswrite('D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up\Georgia.xlsx',list2)

%% Iran (2018 replace 2019)
clear all;clc;
data = readmatrix('iran.csv');
year = data(:,2);
hs = data(:,22);
value = data(:,32);
% [年份，HS4，贸易额]
D2010 = [year(find(year==2010)),hs(find(year==2010)),value(find(year==2010))];
D2013 = [year(find(year==2013)),hs(find(year==2013)),value(find(year==2013))];
D2016 = [year(find(year==2016)),hs(find(year==2016)),value(find(year==2016))];
D2018 = [year(find(year==2018)),hs(find(year==2018)),value(find(year==2018))];
% [HS4的并集]
m_hs = union(hs(find(year==2010)),hs(find(year==2013)));
m_hs = union(m_hs,hs(find(year==2016)));
m_hs = union(m_hs,hs(find(year==2018)));
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
    if m_hs(i) == D2018(find(D2018(:,2)==m_hs(i)),2)
        matrix(i+1,5) = D2018(find(D2018(:,2)==m_hs(i)),3);
    else
        matrix(i+1,5) = 0;
    end
    matrix(i+1,6) = (matrix(i+1,3)/matrix(i+1,2))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    matrix(i+1,7) = (matrix(i+1,4)/matrix(i+1,3))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    matrix(i+1,8) = (matrix(i+1,5)/matrix(i+1,4))^(1/2) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    if matrix(i+1,6)>0 & matrix(i+1,7)>0 & matrix(i+1,8)>0
        list1 = [list1;[m_hs(i),matrix(i+1,2),matrix(i+1,3),matrix(i+1,4),matrix(i+1,5),matrix(i+1,6),matrix(i+1,7),matrix(i+1,8)]];
    end
    if matrix(i+1,5)>matrix(i+1,2)
        list2 = [list2;[m_hs(i),matrix(i+1,2),matrix(i+1,3),matrix(i+1,4),matrix(i+1,5),matrix(i+1,6),matrix(i+1,7),matrix(i+1,8)]];
    end
end
xlswrite('iran.xlsx',matrix);
xlswrite('D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Three_Up\iran.xlsx',list1)
xlswrite('D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up\iran.xlsx',list2)


clear all;clc;
data = readmatrix('Israel.csv');
year = data(:,2);
hs = data(:,22);
value = data(:,32);
% [年份，HS4，贸易额]
D2010 = [year(find(year==2010)),hs(find(year==2010)),value(find(year==2010))];
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
        matrix(i+1,5) = 0;
    end
    matrix(i+1,6) = (matrix(i+1,3)/matrix(i+1,2))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    matrix(i+1,7) = (matrix(i+1,4)/matrix(i+1,3))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    matrix(i+1,8) = (matrix(i+1,5)/matrix(i+1,4))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    if matrix(i+1,6)>0 & matrix(i+1,7)>0 & matrix(i+1,8)>0
        list1 = [list1;[m_hs(i),matrix(i+1,2),matrix(i+1,3),matrix(i+1,4),matrix(i+1,5),matrix(i+1,6),matrix(i+1,7),matrix(i+1,8)]];
    end
    if matrix(i+1,5)>matrix(i+1,2)
        list2 = [list2;[m_hs(i),matrix(i+1,2),matrix(i+1,3),matrix(i+1,4),matrix(i+1,5),matrix(i+1,6),matrix(i+1,7),matrix(i+1,8)]];
    end
end
xlswrite('Israel.xlsx',matrix);
xlswrite('D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Three_Up\Israel.xlsx',list1)
xlswrite('D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up\Israel.xlsx',list2)


clear all;clc;
data = readmatrix('Jordan.csv');
year = data(:,2);
hs = data(:,22);
value = data(:,32);
% [年份，HS4，贸易额]
D2010 = [year(find(year==2010)),hs(find(year==2010)),value(find(year==2010))];
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
        matrix(i+1,5) = 0;
    end
    matrix(i+1,6) = (matrix(i+1,3)/matrix(i+1,2))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    matrix(i+1,7) = (matrix(i+1,4)/matrix(i+1,3))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    matrix(i+1,8) = (matrix(i+1,5)/matrix(i+1,4))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    if matrix(i+1,6)>0 & matrix(i+1,7)>0 & matrix(i+1,8)>0
        list1 = [list1;[m_hs(i),matrix(i+1,2),matrix(i+1,3),matrix(i+1,4),matrix(i+1,5),matrix(i+1,6),matrix(i+1,7),matrix(i+1,8)]];
    end
    if matrix(i+1,5)>matrix(i+1,2)
        list2 = [list2;[m_hs(i),matrix(i+1,2),matrix(i+1,3),matrix(i+1,4),matrix(i+1,5),matrix(i+1,6),matrix(i+1,7),matrix(i+1,8)]];
    end
end
xlswrite('Jordan.xlsx',matrix);
xlswrite('D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Three_Up\Jordan.xlsx',list1)
xlswrite('D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up\Jordan.xlsx',list2)


clear all;clc;
data = readmatrix('kuwait.csv');
year = data(:,2);
hs = data(:,22);
value = data(:,32);
% [年份，HS4，贸易额]
D2010 = [year(find(year==2010)),hs(find(year==2010)),value(find(year==2010))];
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
        matrix(i+1,5) = 0;
    end
    matrix(i+1,6) = (matrix(i+1,3)/matrix(i+1,2))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    matrix(i+1,7) = (matrix(i+1,4)/matrix(i+1,3))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    matrix(i+1,8) = (matrix(i+1,5)/matrix(i+1,4))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    if matrix(i+1,6)>0 & matrix(i+1,7)>0 & matrix(i+1,8)>0
        list1 = [list1;[m_hs(i),matrix(i+1,2),matrix(i+1,3),matrix(i+1,4),matrix(i+1,5),matrix(i+1,6),matrix(i+1,7),matrix(i+1,8)]];
    end
    if matrix(i+1,5)>matrix(i+1,2)
        list2 = [list2;[m_hs(i),matrix(i+1,2),matrix(i+1,3),matrix(i+1,4),matrix(i+1,5),matrix(i+1,6),matrix(i+1,7),matrix(i+1,8)]];
    end
end
xlswrite('kuwait.xlsx',matrix);
xlswrite('D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Three_Up\kuwait.xlsx',list1)
xlswrite('D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up\kuwait.xlsx',list2)


clear all;clc;
data = readmatrix('Kyrgyzstan.csv');
year = data(:,2);
hs = data(:,22);
value = data(:,32);
% [年份，HS4，贸易额]
D2010 = [year(find(year==2010)),hs(find(year==2010)),value(find(year==2010))];
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
        matrix(i+1,5) = 0;
    end
    matrix(i+1,6) = (matrix(i+1,3)/matrix(i+1,2))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    matrix(i+1,7) = (matrix(i+1,4)/matrix(i+1,3))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    matrix(i+1,8) = (matrix(i+1,5)/matrix(i+1,4))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    if matrix(i+1,6)>0 & matrix(i+1,7)>0 & matrix(i+1,8)>0
        list1 = [list1;[m_hs(i),matrix(i+1,2),matrix(i+1,3),matrix(i+1,4),matrix(i+1,5),matrix(i+1,6),matrix(i+1,7),matrix(i+1,8)]];
    end
    if matrix(i+1,5)>matrix(i+1,2)
        list2 = [list2;[m_hs(i),matrix(i+1,2),matrix(i+1,3),matrix(i+1,4),matrix(i+1,5),matrix(i+1,6),matrix(i+1,7),matrix(i+1,8)]];
    end
end
xlswrite('Kyrgyzstan.xlsx',matrix);
xlswrite('D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Three_Up\Kyrgyzstan.xlsx',list1)
xlswrite('D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up\Kyrgyzstan.xlsx',list2)

%% oman (2018 replace 2019)
clear all;clc;
data = readmatrix('oman.csv');
year = data(:,2);
hs = data(:,22);
value = data(:,32);
% [年份，HS4，贸易额]
D2010 = [year(find(year==2010)),hs(find(year==2010)),value(find(year==2010))];
D2013 = [year(find(year==2013)),hs(find(year==2013)),value(find(year==2013))];
D2016 = [year(find(year==2016)),hs(find(year==2016)),value(find(year==2016))];
D2018 = [year(find(year==2018)),hs(find(year==2018)),value(find(year==2018))];
% [HS4的并集]
m_hs = union(hs(find(year==2010)),hs(find(year==2013)));
m_hs = union(m_hs,hs(find(year==2016)));
m_hs = union(m_hs,hs(find(year==2018)));
% 记录HS4的长度
id = length(m_hs);
% matrix是最后要导出的总表
matrix = zeros(id+1,8);
matrix(1,2:5) = [2010,2013,2016,2018];
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
    if m_hs(i) == D2018(find(D2018(:,2)==m_hs(i)),2)
        matrix(i+1,5) = D2018(find(D2018(:,2)==m_hs(i)),3);
    else
        matrix(i+1,5) = 0;
    end
    matrix(i+1,6) = (matrix(i+1,3)/matrix(i+1,2))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    matrix(i+1,7) = (matrix(i+1,4)/matrix(i+1,3))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    matrix(i+1,8) = (matrix(i+1,5)/matrix(i+1,4))^(1/2) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    if matrix(i+1,6)>0 & matrix(i+1,7)>0 & matrix(i+1,8)>0
        list1 = [list1;[m_hs(i),matrix(i+1,2),matrix(i+1,3),matrix(i+1,4),matrix(i+1,5),matrix(i+1,6),matrix(i+1,7),matrix(i+1,8)]];
    end
    if matrix(i+1,5)>matrix(i+1,2)
        list2 = [list2;[m_hs(i),matrix(i+1,2),matrix(i+1,3),matrix(i+1,4),matrix(i+1,5),matrix(i+1,6),matrix(i+1,7),matrix(i+1,8)]];
    end
end
xlswrite('oman.xlsx',matrix);
xlswrite('D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Three_Up\oman.xlsx',list1)
xlswrite('D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up\oman.xlsx',list2)


%% lebanon (2018 replace 2019)
clear all;clc;
data = readmatrix('lebanon.csv');
year = data(:,2);
hs = data(:,22);
value = data(:,32);
% [年份，HS4，贸易额]
D2010 = [year(find(year==2010)),hs(find(year==2010)),value(find(year==2010))];
D2013 = [year(find(year==2013)),hs(find(year==2013)),value(find(year==2013))];
D2016 = [year(find(year==2016)),hs(find(year==2016)),value(find(year==2016))];
D2018 = [year(find(year==2018)),hs(find(year==2018)),value(find(year==2018))];
% [HS4的并集]
m_hs = union(hs(find(year==2010)),hs(find(year==2013)));
m_hs = union(m_hs,hs(find(year==2016)));
m_hs = union(m_hs,hs(find(year==2018)));
% 记录HS4的长度
id = length(m_hs);
% matrix是最后要导出的总表
matrix = zeros(id+1,8);
matrix(1,2:5) = [2010,2013,2016,2018];
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
    if m_hs(i) == D2018(find(D2018(:,2)==m_hs(i)),2)
        matrix(i+1,5) = D2018(find(D2018(:,2)==m_hs(i)),3);
    else
        matrix(i+1,5) = 0;
    end
    matrix(i+1,6) = (matrix(i+1,3)/matrix(i+1,2))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    matrix(i+1,7) = (matrix(i+1,4)/matrix(i+1,3))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    matrix(i+1,8) = (matrix(i+1,5)/matrix(i+1,4))^(1/2) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    if matrix(i+1,6)>0 & matrix(i+1,7)>0 & matrix(i+1,8)>0
        list1 = [list1;[m_hs(i),matrix(i+1,2),matrix(i+1,3),matrix(i+1,4),matrix(i+1,5),matrix(i+1,6),matrix(i+1,7),matrix(i+1,8)]];
    end
    if matrix(i+1,5)>matrix(i+1,2)
        list2 = [list2;[m_hs(i),matrix(i+1,2),matrix(i+1,3),matrix(i+1,4),matrix(i+1,5),matrix(i+1,6),matrix(i+1,7),matrix(i+1,8)]];
    end
end
xlswrite('lebanon.xlsx',matrix);
xlswrite('D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Three_Up\lebanon.xlsx',list1)
xlswrite('D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up\lebanon.xlsx',list2)


clear all;clc;
data = readmatrix('Palestine.csv');
year = data(:,2);
hs = data(:,22);
value = data(:,32);
% [年份，HS4，贸易额]
D2010 = [year(find(year==2010)),hs(find(year==2010)),value(find(year==2010))];
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
        matrix(i+1,5) = 0;
    end
    matrix(i+1,6) = (matrix(i+1,3)/matrix(i+1,2))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    matrix(i+1,7) = (matrix(i+1,4)/matrix(i+1,3))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    matrix(i+1,8) = (matrix(i+1,5)/matrix(i+1,4))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    if matrix(i+1,6)>0 & matrix(i+1,7)>0 & matrix(i+1,8)>0
        list1 = [list1;[m_hs(i),matrix(i+1,2),matrix(i+1,3),matrix(i+1,4),matrix(i+1,5),matrix(i+1,6),matrix(i+1,7),matrix(i+1,8)]];
    end
    if matrix(i+1,5)>matrix(i+1,2)
        list2 = [list2;[m_hs(i),matrix(i+1,2),matrix(i+1,3),matrix(i+1,4),matrix(i+1,5),matrix(i+1,6),matrix(i+1,7),matrix(i+1,8)]];
    end
end
xlswrite('Palestine.xlsx',matrix);
xlswrite('D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Three_Up\Palestine.xlsx',list1)
xlswrite('D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up\Palestine.xlsx',list2)


clear all;clc;
data = readmatrix('qatar.csv');
year = data(:,2);
hs = data(:,22);
value = data(:,32);
% [年份，HS4，贸易额]
D2010 = [year(find(year==2010)),hs(find(year==2010)),value(find(year==2010))];
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
        matrix(i+1,5) = 0;
    end
    matrix(i+1,6) = (matrix(i+1,3)/matrix(i+1,2))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    matrix(i+1,7) = (matrix(i+1,4)/matrix(i+1,3))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    matrix(i+1,8) = (matrix(i+1,5)/matrix(i+1,4))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    if matrix(i+1,6)>0 & matrix(i+1,7)>0 & matrix(i+1,8)>0
        list1 = [list1;[m_hs(i),matrix(i+1,2),matrix(i+1,3),matrix(i+1,4),matrix(i+1,5),matrix(i+1,6),matrix(i+1,7),matrix(i+1,8)]];
    end
    if matrix(i+1,5)>matrix(i+1,2)
        list2 = [list2;[m_hs(i),matrix(i+1,2),matrix(i+1,3),matrix(i+1,4),matrix(i+1,5),matrix(i+1,6),matrix(i+1,7),matrix(i+1,8)]];
    end
end
xlswrite('qatar.xlsx',matrix);
xlswrite('D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Three_Up\qatar.xlsx',list1)
xlswrite('D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up\qatar.xlsx',list2)


clear all;clc;
data = readmatrix('Saudi Arabia.csv');
year = data(:,2);
hs = data(:,22);
value = data(:,32);
% [年份，HS4，贸易额]
D2010 = [year(find(year==2010)),hs(find(year==2010)),value(find(year==2010))];
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
        matrix(i+1,5) = 0;
    end
    matrix(i+1,6) = (matrix(i+1,3)/matrix(i+1,2))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    matrix(i+1,7) = (matrix(i+1,4)/matrix(i+1,3))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    matrix(i+1,8) = (matrix(i+1,5)/matrix(i+1,4))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    if matrix(i+1,6)>0 & matrix(i+1,7)>0 & matrix(i+1,8)>0
        list1 = [list1;[m_hs(i),matrix(i+1,2),matrix(i+1,3),matrix(i+1,4),matrix(i+1,5),matrix(i+1,6),matrix(i+1,7),matrix(i+1,8)]];
    end
    if matrix(i+1,5)>matrix(i+1,2)
        list2 = [list2;[m_hs(i),matrix(i+1,2),matrix(i+1,3),matrix(i+1,4),matrix(i+1,5),matrix(i+1,6),matrix(i+1,7),matrix(i+1,8)]];
    end
end
xlswrite('Saudi Arabia.xlsx',matrix);
xlswrite('D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Three_Up\Saudi Arabia.xlsx',list1)
xlswrite('D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up\Saudi Arabia.xlsx',list2)


clear all;clc;
data = readmatrix('turkey.csv');
year = data(:,2);
hs = data(:,22);
value = data(:,32);
% [年份，HS4，贸易额]
D2010 = [year(find(year==2010)),hs(find(year==2010)),value(find(year==2010))];
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
        matrix(i+1,5) = 0;
    end
    matrix(i+1,6) = (matrix(i+1,3)/matrix(i+1,2))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    matrix(i+1,7) = (matrix(i+1,4)/matrix(i+1,3))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    matrix(i+1,8) = (matrix(i+1,5)/matrix(i+1,4))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    if matrix(i+1,6)>0 & matrix(i+1,7)>0 & matrix(i+1,8)>0
        list1 = [list1;[m_hs(i),matrix(i+1,2),matrix(i+1,3),matrix(i+1,4),matrix(i+1,5),matrix(i+1,6),matrix(i+1,7),matrix(i+1,8)]];
    end
    if matrix(i+1,5)>matrix(i+1,2)
        list2 = [list2;[m_hs(i),matrix(i+1,2),matrix(i+1,3),matrix(i+1,4),matrix(i+1,5),matrix(i+1,6),matrix(i+1,7),matrix(i+1,8)]];
    end
end
xlswrite('turkey.xlsx',matrix);
xlswrite('D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Three_Up\turkey.xlsx',list1)
xlswrite('D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up\turkey.xlsx',list2)


clear all;clc;
data = readmatrix('United Areb Emirates.csv');
year = data(:,2);
hs = data(:,22);
value = data(:,32);
% [年份，HS4，贸易额]
D2010 = [year(find(year==2010)),hs(find(year==2010)),value(find(year==2010))];
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
        matrix(i+1,5) = 0;
    end
    matrix(i+1,6) = (matrix(i+1,3)/matrix(i+1,2))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    matrix(i+1,7) = (matrix(i+1,4)/matrix(i+1,3))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    matrix(i+1,8) = (matrix(i+1,5)/matrix(i+1,4))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    if matrix(i+1,6)>0 & matrix(i+1,7)>0 & matrix(i+1,8)>0
        list1 = [list1;[m_hs(i),matrix(i+1,2),matrix(i+1,3),matrix(i+1,4),matrix(i+1,5),matrix(i+1,6),matrix(i+1,7),matrix(i+1,8)]];
    end
    if matrix(i+1,5)>matrix(i+1,2)
        list2 = [list2;[m_hs(i),matrix(i+1,2),matrix(i+1,3),matrix(i+1,4),matrix(i+1,5),matrix(i+1,6),matrix(i+1,7),matrix(i+1,8)]];
    end
end
xlswrite('United Areb Emirates.xlsx',matrix);
xlswrite('D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Three_Up\United Areb Emirates.xlsx',list1)
xlswrite('D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up\United Areb Emirates.xlsx',list2)


%% Yemen (2015 replace 2016) 
clear all;clc;
data = readmatrix('Yemen.csv');
year = data(:,2);
hs = data(:,22);
value = data(:,32);
% [年份，HS4，贸易额]
D2010 = [year(find(year==2010)),hs(find(year==2010)),value(find(year==2010))];
D2013 = [year(find(year==2013)),hs(find(year==2013)),value(find(year==2013))];
D2015 = [year(find(year==2015)),hs(find(year==2015)),value(find(year==2015))];
D2019 = [year(find(year==2019)),hs(find(year==2019)),value(find(year==2019))];
% [HS4的并集]
m_hs = union(hs(find(year==2010)),hs(find(year==2013)));
m_hs = union(m_hs,hs(find(year==2015)));
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
    if m_hs(i) == D2015(find(D2015(:,2)==m_hs(i)),2)
        matrix(i+1,4) = D2015(find(D2015(:,2)==m_hs(i)),3);
    else
        matrix(i+1,4) = 0;
    end
    if m_hs(i) == D2019(find(D2019(:,2)==m_hs(i)),2)
        matrix(i+1,5) = D2019(find(D2019(:,2)==m_hs(i)),3);
    else
        matrix(i+1,5) = 0;
    end
    matrix(i+1,6) = (matrix(i+1,3)/matrix(i+1,2))^(1/3) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    matrix(i+1,7) = (matrix(i+1,4)/matrix(i+1,3))^(1/2) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    matrix(i+1,8) = (matrix(i+1,5)/matrix(i+1,4))^(1/4) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    if matrix(i+1,6)>0 & matrix(i+1,7)>0 & matrix(i+1,8)>0
        list1 = [list1;[m_hs(i),matrix(i+1,2),matrix(i+1,3),matrix(i+1,4),matrix(i+1,5),matrix(i+1,6),matrix(i+1,7),matrix(i+1,8)]];
    end
    if matrix(i+1,5)>matrix(i+1,2)
        list2 = [list2;[m_hs(i),matrix(i+1,2),matrix(i+1,3),matrix(i+1,4),matrix(i+1,5),matrix(i+1,6),matrix(i+1,7),matrix(i+1,8)]];
    end
end
xlswrite('Yemen.xlsx',matrix);
xlswrite('D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Three_Up\Yemen.xlsx',list1)
xlswrite('D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Up\Yemen.xlsx',list2)


%% Uzbekistan (2017,2018,2019) 
clear all;clc;
data = readmatrix('Uzbekistan.csv');
year = data(:,2);
hs = data(:,22);
value = data(:,32);
% [年份，HS4，贸易额]
D2017 = [year(year==2017),hs(year==2017),value(year==2017)];
D2018 = [year(year==2018),hs(year==2018),value(year==2018)];
D2019 = [year(year==2019),hs(year==2019),value(year==2019)];
% [HS4的并集]
m_hs = union(hs(find(year==2017)),hs(find(year==2018)));
m_hs = union(m_hs,hs(find(year==2019)));
% 记录HS4的长度
id = length(m_hs);
% matrix是最后要导出的总表
matrix = zeros(id+1,6);
matrix(1,2:4) = [2017,2018,2019];
matrix(2:end,1) = m_hs;
list1 = [];
for i = 1:id
    if m_hs(i) == D2017(find(D2017(:,2)==m_hs(i)),2)
        matrix(i+1,2) = D2017(find(D2017(:,2)==m_hs(i)),3);
    else
        matrix(i+1,2) = 0;
    end
    if m_hs(i) == D2018(find(D2018(:,2)==m_hs(i)),2)
        matrix(i+1,3) = D2018(find(D2018(:,2)==m_hs(i)),3);
    else
        matrix(i+1,3) = 0;
    end
    if m_hs(i) == D2019(find(D2019(:,2)==m_hs(i)),2)
        matrix(i+1,4) = D2019(find(D2019(:,2)==m_hs(i)),3);
    else
        matrix(i+1,4) = 0;
    end
    matrix(i+1,5) = (matrix(i+1,3)/matrix(i+1,2))^(1/1) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    matrix(i+1,6) = (matrix(i+1,4)/matrix(i+1,3))^(1/1) - 1;
    matrix(matrix == Inf) = 1; matrix(isnan(matrix)) = 0;
    if matrix(i+1,5)>=0 & matrix(i+1,6)>=0
        list1 = [list1;[m_hs(i),matrix(i+1,2),matrix(i+1,3),matrix(i+1,4),matrix(i+1,5),matrix(i+1,6)]];
    end
end
xlswrite('Uzbekistan.xlsx',matrix);
xlswrite('D:\Matlab\bin\Peking University\World Data进口\Middle_Asia\Three_Up\Uzbekistan.xlsx',list1)
