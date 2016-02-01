function pdesc=plotopen(name,x1,y1,x2,y2)
%Opens a new plot window returning plot descriptor pdesc
a1=1;
a2=1;
b1=0;
b2=0;
pname=['/tmp/' getenv('USER') '-' name '.fifo'];
[fid msg]=fopen(pname,'r+b');
if fid <= 0
   eval(['!/info/ann06/bin/mkfifo -m 666 ' pname])
   [fid msg]=fopen(pname,'r+b');
   eval(['!/info/ann06/bin/xoplot -t ' name ' <' pname ' &'])
end
pdesc=fid;
%construct the plot descriptor
pdesc=[fid x1 y1 x2 y2 a1 a2 b1 b2];
pdesc=plotspace(pdesc,x1,y1,x2,y2);
