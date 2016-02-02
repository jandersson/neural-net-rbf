function bytes=byte2(n)
%Splits an integer into 2 byte with first byte being the least significant
byte1=floor(n/256);
byte0=floor(n-byte1*256);
bytes=[byte0 byte1];
