function [m,var]=initrbf(units,dims,dmin,dmax);
% plots rbf set two dimensionally as points. p1 and p2 are the actual
% dimensions plotted. Here we assume that the variances per unit are
% one dimensional.
%i=rows(m);
span=abs(dmax-dmin);
m=rand(units,dims)*span+min(dmin,dmax);
sdev=0.1*span*ones(units,1);
var=sdev.*sdev;
