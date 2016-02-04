clear all
close all



x = 0:0.1:2*pi;
x = x';
units = 22; % Number of neurons (in hidden layer)
% f = sin2x(x);
f = cos2x(x);
% f = f./x;
% plot(x,f)
% f = square(2*x)
makerbf;

Phi = calcPhi(x,m,var);

w = (Phi'*Phi)\(Phi'*f);

y = Phi*w;

%y = sign(y)

rbfplot1(x,y,f,units)
%%
fun = 'cos2x';
% itermax = 100;
% itersub = 2;
eta = 0.001;
diter


%% 5.0 RBF Placement by Self Organization
plotinit;
data=read('cluster');
units=3;
vqinit;
singlewinner=1;
vqstep;
vqiter;


