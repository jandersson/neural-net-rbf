function pd=plotdata(pd,data,p1,p2);
% plots data set two dimensionally as points. p1 and p2 are the actual
% dimensions plotted.
global pointsize;	% declared in the init file
i=rows(data);
while i > 0
  dtemp=[data(i,p1) data(i,p2)];
  %  plotpoint(pd,dtemp);
  plotcircle(pd,dtemp,pointsize);
  i=i-1;
end

