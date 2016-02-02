function pdesc=plotbuffer(pd)
% Starts buffering plot commands, i.e. does not display immedeately
% This is used to get smoother plots
fwrite(pd(1),'B');

