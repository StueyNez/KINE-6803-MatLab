function [BMI] = CalculateBMI(Weightkg,Heightcm)
% This Function serves to calculate the BMI of subjects height in cm
% and weight in kg. 
Heightm = Heightcm/100;
% for i = 1:length(Weightkg)
%     BMI = Weightkg/(Heightm.^2);
% end

BMI = Weightkg./(Heightm.^2);

end

