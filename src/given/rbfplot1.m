function ans = rbfplot1(x,y,yd,units)
%Plot of x, y and desired y with residual

%Find the actual output by using the calculated weight vector
subplot(2,1,1); plot(x,y,x,yd);
title([' Function y and desired y, RBF-units=' int2str(units)]);
subplot(2,1,2); plot(x,yd-y);
title(['Residual, max= ' num2str(max(abs(yd-y)))]);

