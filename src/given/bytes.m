function bytes=bytes(n)
%Splits an integer into 2 byte with first byte being the least significant
if cols(n)>1
  i=1;
  imax=cols(n);
  bytes=zeros(1,2*imax);
  while i<=imax
    tmp=n(i);
    if tmp<0
     tmp=65535+n(i)+1;
    end
    byte1=floor(tmp/256);
    byte0=floor(tmp-byte1*256);
    bytes(i*2-1)=byte0;
    bytes(i*2)=byte1;
    i=i+1;
  end
else
  if n<0
     n=65535+n+1;
  end
  byte1=floor(n/256);
  byte0=floor(n-byte1*256);
  bytes=[byte0 byte1];
end
