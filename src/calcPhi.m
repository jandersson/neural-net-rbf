% Calculate responses for gaussian RBF units from sample vector x
function Phi=calcPhi(x,m,var);

%Dimension the function matrix fi
Phi=zeros(rows(x),rows(m));

%Calculate the RBF responses
for i=1:rows(x)
  Phi(i,:)=gauss(x(i,:),m,var)';
end
