% Do VQ-steps until convergence

diffm = 1;
%plotbuffer(pd);
while (diffm>1e-6)
  vqstep;
  diffm = sum(sum((m-oldm).*(m-oldm)));
%  plotrefresh(pd);
pause(0.3);
end;
%plotnobuff(pd);
