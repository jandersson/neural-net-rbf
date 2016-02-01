% One step of clustering using Vector Quantization algorithm
% Needs initilisation: vqinit + initrbf
% variables needing init are:
% delta	: learning rate
% m	: unit positions (by initrbf)
% 
% The algoritm works by moving the closest unit. This is here done batchwise,
% 

dstcum=var*0;
dfcum=m*0;
i=rows(data);

while i>0
  %find distance and difference between all unit positions and the data point
  [sqdst df]=sqdist(m,data(i,:));
  %find the unit which is closest to this data point
  [dst ind]=min(sqdst);
  if singlewinner
     %Accumulate move for this unit only
     dfcum(ind,:)=dfcum(ind,:)+df(ind,:)*delta;
  else
     %Accumulate move for the units according their distances
     dfcum=dfcum+mulvec(df,(dst./(sqdst+eps))*delta);
  end
  i=i-1;
end

%Now we have calculated and accumulated all moves
%and can do the actual move
oldm=m;
m=m+dfcum;
figure(h);
%plotbuffer(pd);
%ploterase(pd);
clf;
plotdata2(h,data);
plotrbf2(h,m,var,p1,p2);
%plotlines(pd,m,oldm,p1,p2);
%plotrefresh(pd);
