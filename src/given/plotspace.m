function pdesc=plotspace(pdesc,x1,y1,x2,y2)
%defines the plotspace for plot described by pdesc
xfactor=1;
yfactor=1;
xoffset=0;
yoffset=0;
xmin=0;
ymin=0;
xmax=10000;
ymax=10000;
pdesc(2)=x1;
pdesc(3)=y1;
pdesc(4)=x2;
pdesc(5)=y2;
xfactor = ((xmax-xmin))/(x2 - x1);
yfactor = ((ymax-ymin))/(y2 - y1);
xoffset = ((x2 * xmin)-(x1 * xmax))/(x2 - x1);
yoffset = ((y2 * ymin)-(y1 * ymax))/(y2 - y1);
pdesc(6)=xfactor;
pdesc(7)=yfactor;
pdesc(8)=xoffset;
pdesc(9)=yoffset;
plotwrite(pdesc,'s',[xmin ymin xmax ymax]);
pdesc;
