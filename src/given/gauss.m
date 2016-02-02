function gauss = gauss(x,m,var)
% GAUSS(X,M,VAR) is a normalized gaussian in one dimension
% X	is the positions, each row is one coordinate
% M 	is centers for the bell shaped gaussians
% VAR 	is their variances
gauss=exp(-sqdist(m,x)./(2*pi*(var)));
gauss=gauss/sum(gauss);
