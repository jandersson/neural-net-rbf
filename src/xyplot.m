function mserr=xyplot(desired,estimated,titletext);
% rmserr=XYPLOT(desired,estimated,title)
% Plots desired and estimated values on x versus y axis
% The root mean square error is returned

x=min(desired):0.1:max(desired);
plot(desired,estimated,'+',x,x);
mserr=sqrt(sum((desired-estimated).^2)/length(desired));
title([titletext ' :  Mean Sigma Err= ' num2str(mserr)]);
xlabel('Desired');
ylabel('Predicted');

