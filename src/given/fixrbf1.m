function [m, var]=fixrbf1(units,dmin,dmax)
% Initialises a set of RBFs to be equidistantly positioned over the ONE
% DIMENSIONAL space with fixed sized variances.
% A correction has been made in the line below. The actual number of units
% was one more than specified by units.
dist=((dmax-dmin)/(units - 1));
%m is a column vector with positions (for several dimension => more columns)
m=(dmin:dist:dmax)';
% Let them also have the same standard deviation
sdev=m*0+0.5*dist;
var=sdev.*sdev;
