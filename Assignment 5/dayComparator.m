function [increaseDataMatrix] = dayComparator(SubjectID, Day1, Day2 )
%Summary of dayComparator 
%    This function will serve to create a new column with the subjects (Subject ID's) who improved from their first
%   day input to their second day input. 

SubjectDayMatrix = [SubjectID, Day1, Day2]; %Creates a matrix of the input columns
increaseData = zeros(50,1); %Initializes a matrix for the new column of participantIDs being created
for i = 1:length(SubjectDayMatrix) %Goes through the all of the matrix and then stops
    if (Day2(i) - Day1(i)) > 0 %If the second day was greater than the first day, the difference will be greater than 0
        continue
    end
    increaseData(i) = (SubjectID(i)); %Creates a new array column with the participantIDs that meet the conditions above, but the values that were not larger are now 0's
end

increaseDataMatrix = increaseData(increaseData ~= 0); %Creates a new column without the zeros and only the ParticipantIDs

end 