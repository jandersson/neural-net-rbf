% Init of clustering using Vector Quantization algorithm
% Needs initilisation:
% units	: tells which units to use
% m	: is units positions
% delta	: a learning rate
% data	: the training data vector
% p1	: plot dimension 1
% p2	: plot dimension 2
p1=1;	%temporarily
p2=2;	%temporarily

delta=0.1;		% used by vqstep and emstep

global pointsize;
border=0.2;		% how much to plot outside data set size
dmin=min(min(data));	% min for all dimensions
dmax=max(max(data));	% max for all dimensions
xmin=dmin-(dmax-dmin)*border;
xmax=dmax+(dmax-dmin)*border;
ymin=dmin-(dmax-dmin)*border;
ymax=dmax+(dmax-dmin)*border;
pointsize=abs((dmax-dmin)/250);
%pd=plotopen('lab6',xmin,ymin,xmax,ymax);
h=figure();
%plotbuffer(pd);
%ploterase(pd);
figure(h);
clf;
% global border,dmin,dmax,xmin,xmax,pointsize,pd;
%plotdata(pd,data,p1,p2);
%data=read('cluster');
plotdata2(h, data);
xlim([1 7]);
ylim([1 7]);

global m;
[m var]=initrbf(units,cols(data),dmin,dmax);
plotrbf2(h,m,var,p1,p2);
%plotrefresh(pd);

etha=var*0+1/units;
