rng default
Fs = 1000;
fc = 150;
Wn = (2/Fs)*fc;
b = fir1(20,Wn,'low',kaiser(21,3));
filtered_xtrain1 = filter(b, 1, xtrain(:,1));
filtered_xtrain2 = filter(b, 1, xtrain(:,2));
filtered_xtrain = [filtered_xtrain1,filtered_xtrain2];
