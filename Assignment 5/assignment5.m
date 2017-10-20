% Assignment 5
% Name: Stuart Nezlek
% Due Date: Oct 20
% Assignment description: This assignment will let us import 3 days of
% isometric max strength data and then export it an excel file

[SubjectID,Age,Gender,Weight,Day1,Day2,Day3] = importfile('isok_data_6803.csv');

genderDouble = grp2idx (Gender);

[maleIsoIndMeans, maleIsoGroupMean, femaleIsoIndMeans, femaleIsoGroupMean]  = genderIsoCalc( genderDouble, Day1, Day2, Day3 )

day1toDay2 = dayComparator(SubjectID, Day1, Day2)

day2toDay3 = dayComparator(SubjectID, Day2, Day3)

[normDataMean1, normDataMean2, normDataMean3] = normalizeWeight( Weight, Day1, Day2, Day3)

% Below are the string matrixes that will be used as headers for the values
% computed and displayed in the excel sheets
xlsMeanLabels = ["maleIsoIndMeans","maleIsoGroupMean", "femaleIsoIndMeans", "femaleIsoGroupMean"];

xlsDayLabels = ["Day1", "Day2", "Day3"]';

xlsDayComparatorLabels = ["Day 1 to Day 2", "Day 2 to Day 3"];

xlsDayLabels2 = ["Day1", "Day2", "Day3"];


% below are the excel write outputs for both male and female IsoIndMean,
% male and female IsoGroupMean, Day Comparators of Day 1 to 2 and Day 2 to
% 3, and the weight normalization from each of the 3 days. 
xlswrite('iso_results.csv' ,'maleIsoIndMeans','A1')
xlswrite('iso_results.csv' ,maleIsoIndMeans,'A2')

xlswrite('iso_results.csv' ,'femaleIsoIndMeans','B1')
xlswrite('iso_results.csv' ,femaleIsoIndMeans, 'B2')

xlswrite('iso_results.csv' ,'maleIsoGroupMeans','C1')
xlswrite('iso_results.csv', (mean(maleIsoIndMeans)), 'C2')

xlswrite('iso_results.csv' ,'femaleIsoGroupMeans','D1')
xlswrite('Iso_results.csv', (mean(femaleIsoIndMeans)), 'D2')

xlswrite('iso_results.csv' ,'Day 1 to Day 2','E1')
xlswrite('iso_results.csv',day1toDay2,'E2')

xlswrite('iso_results.csv' ,'Day 2 to Day 3','F1')
xlswrite('iso_results.csv',day2toDay3,'F2')

xlswrite('iso_results.csv' , 'Normalize Weight', 'G1')
xlswrite('iso_results.csv',[normDataMean1, normDataMean2, normDataMean3],'G2')
