function [maleIsoIndMeans, maleIsoGroupMean, femaleIsoIndMeans, femaleIsoGroupMean]  = genderIsoCalc( genderDouble, Day1, Day2, Day3 )
%Summary of genderIsoCalc
% This function will serve to take data from the Gender, Day1, Day2, and
% Day3 originating from the excel input file. It will then calculate the  mean forces of both male and female for each of the days(maleIsoIndMeans, femaleIsoIndMeans), and
% then the mean across the three days for both genders (maleIsoGroupMean, femaleIsoGroupmean). 

dataMatrix = [genderDouble, Day1, Day2, Day3]; %Creates a new matrix with all the column arrays. also initializes all of the variables that will be used in the for loop that's being used for this function
mSumDay1 = 0;
mSumDay2 = 0;
mSumDay3 = 0;
fSumDay1 = 0;
fSumDay2 = 0;
fSumDay3 = 0;
mtotal = 0;
ftotal = 0;

for i = 1:length(dataMatrix)
    if genderDouble(i) == 2 %If row is for male subjects
        mSumDay1 = mSumDay1 + Day1(i); %sums up all male forces for day 1
        mSumDay2 = Day2(i) + mSumDay2; %sums up all male forces for day 2
        mSumDay3 = Day3(i) + mSumDay3; %sums up all male forces for day 3 
        mtotal = mtotal + 1; %Records the number of male subjects in this data set
    else
        continue
    end
end

maleIsoIndMeans = [(mSumDay1/mtotal), (mSumDay2/mtotal), (mSumDay3/mtotal)];
%This will take the sum of each day and divide it by the number of male participants to
%determine the mean force for all males on each day

maleIsoGroupMean = (mean(maleIsoIndMeans));
% This will find the mean force for all male subjects across all 3 days

for i = 1:length(dataMatrix)
    if genderDouble(i) == 1 %if row is for female subjects
        fSumDay1 = fSumDay1 + Day1(i); %sums up all female forces for day1
        fSumDay2 = Day2(i) + fSumDay2; %sums up all female forces for day2
        fSumDay3 = Day3(i) + fSumDay3; %sums up all female forces for day3
        ftotal = ftotal +1; %records the number of femals subjects in the data set
    else
        continue
    end
    
    femaleIsoIndMeans = [(fSumDay1/ftotal), (fSumDay2/ftotal), (fSumDay3/ftotal)];
  %This will take the sum of each day and divide it by the number of femals participants to
  %determine the mean force for all females on each day
  
  femaleIsoGroupMean = (mean(femaleIsoIndMeans));
  % This will find the mean force for all male subjects across all 3 days


end

end

