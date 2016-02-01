function [sqdst,df] =sqdist(m,row);
% dst is the squared euclidian distance between all unit positions 
% and the coordinates in row.
df=rowdiff(m,row);
sqdst=rowsum(df.*df);
