Graphs for AIMD simulation results.

This is currently set for 4 simultaneous calculation results for 1 system, though I don't see why you can't just modify this stuff for your needs.

These scripts were made using MATLAB 2018b, so they use the oudated subplot function. 2019a and later uses a new function for the same job, but it'll still compile these scripts.

Data is read in through an Excel file. You'll need to pull data from your vasp.out or OUTCAR to put into the Excel file. If you're more experienced with MATLAB/VASP, you can probably just skip the export to Excel.
