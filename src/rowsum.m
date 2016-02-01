function s=rowsum(mat)
% ROWSUM(M) Sums all elements in each row, returning a column vector
if cols(mat)>1
   s=sum(mat')';
else
   s=mat;
end
