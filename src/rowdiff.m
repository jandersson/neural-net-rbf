function mat=rowdiff(m,r);
% calculates difference between row vector r and all rows in matrix m
i=rows(m);
while i > 0
  mat(i,:)=r-m(i,:);
  i=i-1;
end

