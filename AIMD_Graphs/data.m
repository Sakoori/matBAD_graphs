%this script reads in data from an Excel spreadsheet
%Excel spreadsheet NEEDS to be in the same folder/directory as these scripts, otherwise you'll get an error because it can't find the data
%data can be collected from vasp.out or OUTCAR
%make sure when you paste the data in, you put it in the right columns, otherwise you'll need to reconfigure the cells
%change the cells it reads in depending on what your range is
%the data ranges have to be the same length as your time otherwise you'll get MATLAB errors because it doesn't know what to do with jagged vectors/matrices
%eventually I'll figure out how to circumvent that

filename = 'data.xlsx';
%xlsread('excel file', 'sheet', 'column cells')
time = xlsread('data.xlsx', 'Andersen Tests', 'A3:A75');

%energy
E01 = xlsread('data.xlsx', 'Andersen Tests', 'B3:B75');
E02 = xlsread('data.xlsx', 'Andersen Tests', 'F3:F75');
E03 = xlsread('data.xlsx', 'Andersen Tests', 'J3:J75');
E04 = xlsread('data.xlsx', 'Andersen Tests', 'N3:N75');

%bond distance
B01 = xlsread('data.xlsx', 'Andersen Tests', 'C3:C75');
B02 = xlsread('data.xlsx', 'Andersen Tests', 'G3:G75');
B03 = xlsread('data.xlsx', 'Andersen Tests', 'K3:K75');
B04 = xlsread('data.xlsx', 'Andersen Tests', 'O3:O75');

%temperature
T01 = xlsread('data.xlsx', 'Andersen Tests', 'D3:D75');
T02 = xlsread('data.xlsx', 'Andersen Tests', 'H3:H75');
T03 = xlsread('data.xlsx', 'Andersen Tests', 'L3:L75');
T04 = xlsread('data.xlsx', 'Andersen Tests', 'P3:P75');
