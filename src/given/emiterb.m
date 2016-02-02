% Do batchwise EM-steps until convergence

diffm = 1;
diffvar = 1;
%plotbuffer(pd);
%while (diffvar>1e-10) & (diffm>1e-10)
while (diffvar>1e-7) & (diffm>1e-8)
  emstepb;	% A batchwise EM-step
  diffm = sum(sum((m-oldm).*(m-oldm)));
  diffvar =sum((var-oldvar).*(var-oldvar));
  %plotrefresh(pd);
  pause(0.3);
end;
%plotnobuff(pd);
