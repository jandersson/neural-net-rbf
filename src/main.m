clear all
close all

x = 0:0.1:2*pi;
x = x';
units = 60; % Number of neurons (in hidden layer)
%f = sin2x(x);
f = square(2*x)
makerbf

Phi = calcPhi(x,m,var)

w = (Phi'*Phi)\(Phi'*f)

y = Phi*w

%y = sign(y)



rbfplot1(x,y,f,units)
%%
fun = 'sin2x';
eta = 0.25;
diter



