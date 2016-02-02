function vec=mulrows(m1,m2);
% calculates product between matrix and vector r, where each row has
% been multiplied with each corresponding element in r.
i=rows(m1);
vec=ones(i,1);
while i > 0
  vec(i)=m1(i,:)*m2(i,:)';
  i=i-1;
end
