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
[xtrain, ytrain] = readxy('ballist', 2 ,2);
[xtest , ytest] = readxy('balltest', 2, 2);

units = 17;
data = xtrain;
vqinit;
singlewinner = 1;
figure(1)
emiterb;

Phi = calcPhi(xtrain, m, var);

d1 = ytrain(:, 1);
w1 = Phi\d1;
y1 = Phi*w1;

d2 = ytrain(:, 2);
w2 = Phi\d2;
y2 = Phi*w2;


Phitest = calcPhi(xtest, m, var);
ytest1 = Phitest * w1;
ytest2 = Phitest * w2;
dtest1 = ytest(:,1);
dtest2 = ytest(:,2);

figure(2)
xyplot(d1',y1','train1')
figure(3)
xyplot(d2', y2', 'train2')
figure(4)
xyplot(dtest1', ytest1', 'test1')
figure(5)
xyplot(dtest2', ytest2', 'test2')

%% testing
[xtrain, ytrain] = readxy('ballist', 2 ,2);
[xtest , ytest] = readxy('balltest', 2, 2);

error_avg = zeros(1,40);

for bla=1:40
    cur_errors = zeros(1,20);
    for kj=1:20
        units = bla;
        data = xtrain;
        vqinit;
        singlewinner = 1;
        %figure(1)
        emiterb;




        Phi = calcPhi(xtrain, m, var);
        Phitest = calcPhi(xtest, m, var);

        d1 = ytrain(:, 1);
        w1 = Phi\d1;
        y1 = Phi*w1;

        d2 = ytrain(:, 2);
        w2 = Phi\d2;
        y2 = Phi*w2;


        ytest1 = Phitest * w1;
        ytest2 = Phitest * w2;
        dtest1 = ytest(:,1);
        cur_errors(kj) = sqrt(sum((dtest2'-ytest2').^2)/length(dtest2'));
    end
    error_avg(bla) = mean(cur_errors);
end


