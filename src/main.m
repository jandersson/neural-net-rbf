clear all
close all

x = 0:0.1:2*pi;
x = linspace(0,2*pi,6)
x = x';
units = 6; % Number of neurons (in hidden layer)
f = sin2x(x);
%f = square(2*x)
%%
makerbf

%%
Phi = calcPhi(x,m,var)

w = (Phi'*Phi)\(Phi'*f)

y = Phi*w

rbfplot1(x,y,f,units)




