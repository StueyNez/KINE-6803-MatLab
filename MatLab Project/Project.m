% MatLab Project
%Author: Stuart Nezlek
% Program Description: This progam functions to serve as a risk factor
% calculator for patients and their health values. With this program, an accurate treatment prescription can be determined on a subject to subject basis. Initally, the program will import the subject data from an
% excel sheet. Following this, the function "Calculate BMI" will go through and calculate the BMI of each patient. Lastly, the function "CalculateRFR" will go through and calculate each subjects risk factor
% ranking(described in CalculateRFR function). After all this has been
% completed, the subjects will be groups based on the number of risk
% factors they were screened for and the results will pop up in the form of
% a pie chart.
[SubjectID,Gender,Heightcm,Weightkg,BloodPressureSystolicmmHg,BloodPressureDiastolicmmHg,BloodCholesterolmgdL,BloodGlucoseFastingmgdL,BloodGlucose2hrspostmealmgdL] = importfile_data('Patient_Data.xlsx','Sheet1',2,11);

Gender = grp2idx (Gender);

[BodyMassIndex] = CalculateBMI(Weightkg,Heightcm);

[RiskFactorRanking,RiskFreeRFR,Group1RFR,Group2RFR] = CalculateRFR(BodyMassIndex,BloodPressureSystolicmmHg,BloodPressureDiastolicmmHg,BloodCholesterolmgdL,BloodGlucoseFastingmgdL,BloodGlucose2hrspostmealmgdL)

X = [sum(RiskFreeRFR),sum(Group1RFR),sum(Group2RFR)]

pie(X)
