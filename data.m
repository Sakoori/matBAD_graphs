filename = 'shit.xlsx';
%xlsread('excel file', 'sheet', 'columns')
time = xlsread('shit.xlsx', 'Andersen Tests', 'A3:A75');

%energy
E01 = xlsread('shit.xlsx', 'Andersen Tests', 'B3:B75');
E02 = xlsread('shit.xlsx', 'Andersen Tests', 'F3:F75');
E03 = xlsread('shit.xlsx', 'Andersen Tests', 'J3:J75');
E04 = xlsread('shit.xlsx', 'Andersen Tests', 'N3:N75');

%bond distance
B01 = xlsread('shit.xlsx', 'Andersen Tests', 'C3:C75');
B02 = xlsread('shit.xlsx', 'Andersen Tests', 'G3:G75');
B03 = xlsread('shit.xlsx', 'Andersen Tests', 'K3:K75');
B04 = xlsread('shit.xlsx', 'Andersen Tests', 'O3:O75');

%temperature
T01 = xlsread('shit.xlsx', 'Andersen Tests', 'D3:D75');
T02 = xlsread('shit.xlsx', 'Andersen Tests', 'H3:H75');
T03 = xlsread('shit.xlsx', 'Andersen Tests', 'L3:L75');
T04 = xlsread('shit.xlsx', 'Andersen Tests', 'P3:P75');