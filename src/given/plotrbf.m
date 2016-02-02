function pd=plotrbf(pd,m,var,p1,p2);
% plots rbf set two dimensionally as points. p1 and p2 are the actual
% dimensions plotted. Here we assume that the variance deviations per
% unit are one dimensional.
i=rows(m);
while i > 0
  mtemp=[m(i,p1) m(i,p2)];
  plotcircle(pd,mtemp,sqrt(var(i)));
  i=i-1;
end
