function data=read(fil);
% loads data from file fil.dat
eval(['load ' fil '.dat;']);
eval(['data=' fil ';']);

