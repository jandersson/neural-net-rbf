% Inititialisation of RBF units with fixed positions over the data set.
% Input:
% x	: data training vector
% units : number of RBF units
% Output:
% m	: vector of RBF positions
% var	: vector of RBF variances
% xmin	: x data min
% xmax	: x data max

margin=0.1;		% How large margin outside data set
fmin=min(min(x));	% min for all dimensions
fmax=max(max(x));	% max for all dimensions
xmin=fmin-(fmax-fmin)*margin;
xmax=fmax+(fmax-fmin)*margin;

global m;
global var;
global w;
[m var]=fixrbf1(units,fmin,fmax);

%Initialize the weight vector with random values
w=rand(rows(m),1)+0.1;

%These variables are used by lmsiter.m
iter=0;
itersub=20;		% subsampling
itermax=2000;		% # iterations per call to diter (multiple of itersub)

delta=0.2;		% used by others
