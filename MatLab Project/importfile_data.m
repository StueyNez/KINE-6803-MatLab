function [SubjectID,Gender,Heightcm,Weightkg,BloodPressureSystolicmmHg,BloodPressureDiastolicmmHg,BloodCholesterolmgdL,BloodGlucoseFastingmgdL,BloodGlucose2hrspostmealmgdL] = importfile(workbookFile,sheetName,startRow,endRow)
%IMPORTFILE Import data from a spreadsheet
%   [SubjectID1,Gender1,Heightcm1,Weightkg1,BloodPressureSystolicmmHg,BloodPressureDiastolicmmHg,BloodCholesterolmgdL1,BloodGlucoseFastingmgdL1,BloodGlucose2hrspostmealmgdL1]
%   = IMPORTFILE(FILE) reads data from the first worksheet in the Microsoft
%   Excel spreadsheet file named FILE and returns the data as column
%   vectors.
%
%   [SubjectID1,Gender1,Heightcm1,Weightkg1,BloodPressureSystolicmmHg,BloodPressureDiastolicmmHg,BloodCholesterolmgdL1,BloodGlucoseFastingmgdL1,BloodGlucose2hrspostmealmgdL1]
%   = IMPORTFILE(FILE,SHEET) reads from the specified worksheet.
%
%   [SubjectID1,Gender1,Heightcm1,Weightkg1,BloodPressureSystolicmmHg,BloodPressureDiastolicmmHg,BloodCholesterolmgdL1,BloodGlucoseFastingmgdL1,BloodGlucose2hrspostmealmgdL1]
%   = IMPORTFILE(FILE,SHEET,STARTROW,ENDROW) reads from the specified
%   worksheet for the specified row interval(s). Specify STARTROW and
%   ENDROW as a pair of scalars or vectors of matching size for
%   dis-contiguous row intervals. To read to the end of the file specify an
%   ENDROW of inf.%
% Example:
%   [SubjectID1,Gender1,Heightcm1,Weightkg1,BloodPressureSystolicmmHg,BloodPressureDiastolicmmHg,BloodCholesterolmgdL1,BloodGlucoseFastingmgdL1,BloodGlucose2hrspostmealmgdL1] = importfile('Patient_Data.xlsx','Sheet1',2,11);
%
%   See also XLSREAD.

% Auto-generated by MATLAB on 2017/11/14 12:09:02

%% Input handling

% If no sheet is specified, read first sheet
if nargin == 1 || isempty(sheetName)
    sheetName = 1;
end

% If row start and end points are not specified, define defaults
if nargin <= 3
    startRow = 2;
    endRow = 11;
end

%% Import the data
[~, ~, raw] = xlsread(workbookFile, sheetName, sprintf('A%d:I%d',startRow(1),endRow(1)));
for block=2:length(startRow)
    [~, ~, tmpRawBlock] = xlsread(workbookFile, sheetName, sprintf('A%d:I%d',startRow(block),endRow(block)));
    raw = [raw;tmpRawBlock]; %#ok<AGROW>
end
stringVectors = string(raw(:,2));
stringVectors(ismissing(stringVectors)) = '';
raw = raw(:,[1,3,4,5,6,7,8,9]);

%% Create output variable
I = cellfun(@(x) ischar(x), raw);
raw(I) = {NaN};
data = reshape([raw{:}],size(raw));

%% Allocate imported array to column variable names
SubjectID = data(:,1);
Gender = categorical(stringVectors(:,1));
Heightcm = data(:,2);
Weightkg = data(:,3);
BloodPressureSystolicmmHg = data(:,4);
BloodPressureDiastolicmmHg = data(:,5);
BloodCholesterolmgdL = data(:,6);
BloodGlucoseFastingmgdL = data(:,7);
BloodGlucose2hrspostmealmgdL = data(:,8);

