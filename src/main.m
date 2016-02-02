clear all
close all
x = 0:0.1:2*pi;
x = x';
units = 5; % Number of neurons (in hidden layer)
f = sin2x(x);
%%
makerbf

%%
Phi = calcPhi(x,m,var)

new_w = (Phi'*Phi)\(Phi'*f)

y = Phi*w

rbfplot1(x,y,f,units)