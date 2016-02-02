function pd=plotlines(pd,newpos,oldpos,p1,p2);
% plots the move of points from one place to another as lines.
% plots data set two dimensionally as points. p1 and p2 are the actual
% dimensions plotted.

i=rows(newpos);
while i > 0
  npos=[newpos(i,p1) newpos(i,p2)];
  opos=[oldpos(i,p1) oldpos(i,p2)];
  %  plotpoint(pd,dtemp);
  plotline(pd,opos,npos)
  i=i-1;
end
