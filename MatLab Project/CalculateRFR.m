function [CalculateRFR,RiskFreeRFR,Group1RFR,Group2RFR] = CalculateRFR(BodyMassIndex,BloodPressureSystolicmmHg,BloodPressureDiastolicmmHg,BloodCholesterolmgdL,BloodGlucoseFastingmgdL,BloodGlucose2hrspostmealmgdL )
%This Function will serve to calculate a subjects individual Risk Factor
%Ranking. If a participant has 1 or less values above the accepted healthy ranges, they
%are considered "Risk Free". If a particpiant has 2 or 3 values above the
%accepted ranges, they are considered "Level 1 Risk". If a participant has
%more than 3 values above the accepted ranges, they are considered "Level 2
%Risk". What this function determines is the correlating treatment plan for
%a participant depending on what Risk level they fall into.

BMIRFR = BodyMassIndex < 18.5 & BodyMassIndex > 24.9;

BPSystolicRFR = BloodPressureSystolicmmHg > 120;

BPDiastolicRFR = BloodPressureDiastolicmmHg > 80;

BCholesterolRFR = BloodCholesterolmgdL > 200;

BFastingRFR = BloodGlucoseFastingmgdL > 100;

B2hrsPostRFR = BloodGlucose2hrspostmealmgdL > 140;

CalculateRFR = BMIRFR + BPSystolicRFR + BPDiastolicRFR + BCholesterolRFR + BFastingRFR + B2hrsPostRFR;

RiskFreeRFR =  CalculateRFR >= 0 & CalculateRFR < 2

Group1RFR = CalculateRFR >= 2 & CalculateRFR <= 3

Group2RFR = CalculateRFR > 3

end

