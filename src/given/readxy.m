function [xdata,ydata]=readxy(fil,xsize,ysize);
% loads data from file fil.dat using xsize columns for x and ysize cols for y
eval(['load ' fil '.dat;']);
eval(['data=' fil ';']);
xdata=data(:,1:xsize);
ydata=data(:,xsize+1:xsize+ysize);
