function mat=mulvec(m,r);
% calculates product between matrix and vector r, where each row has
% been multiplied with each corresponding element in r.
i=rows(m);
while i > 0
  mat(i,:)=m(i,:)*r(i);
  i=i-1;
end
