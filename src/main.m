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
plotinit; %Initialize the plot parameters
data=read('cluster'); %Read datapoints from the data file
units=4; %Number of RBF units
vqinit; %Opens a plot window, positions the RBF units randomly in the space defined by the data and plots the data points and RBF units.
singlewinner=1; %Flag specifying the use of the 'winner take all' strategy. A false flag will allow all units to move.

%Using EM
emiterb;

%% 6.0 Noisy Data Approximation
clf;
[xtrain ytrain] = readxy('ballist', 2 ,2);
[xtest ytest] = readxy('balltest', 2, 2);
units = 20;
data = xtrain;
vqinit;
singlewinner = 1;
emiterb

Phi = calcPhi(xtrain, m, var);

d1 = ytrain(:, 1);
d2 = ytrain(:, 2);
dtest1 = ytest(:,1);
dtest2 = ytest(:,2);
w1 = Phi\d1;
w2 = Phi\d2;
y1 = Phi*w1;
y2 = Phi*w2;

Phitest = calcPhi(xtest, m, var);
ytest1 = Phitest * w1;
ytest2 = Phitest * w2;

xyplot(d1,y1,'train1');
xyplot(d2, y2, 'train2');
xyplot(dtest1, ytest1, 'test1');
xyplot(dtest2, ytest2, 'test2');