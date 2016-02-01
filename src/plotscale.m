function ncoord=plotscale(pd,coord);
% Maps coordinates according scaling factors stored in plot descriptor pd
% coordinates is a vector of 2 or 3 dims depending on if it is a simple
% coordinate or a circle description (x y r)
ncoord=coord;
ncoord(1:2)=pd(6:7).*coord(1:2);
ncoord(1:2)=pd(8:9)+ncoord(1:2);
if cols(coord)>2
   ncoord(3)=pd(6)*coord(3);
end;
