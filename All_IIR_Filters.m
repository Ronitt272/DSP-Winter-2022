clc ;
clear all;
close all;

Wc = 800;
FS = 8000;
wc = 2*pi*Wc/FS;
T = 1;

[a,b] = butter(5,0.4,'s');                  % Lowpass Butterworth
figure(1)
[ad, bd] = bilinear(a, b, T);
freqz(ad,bd,512,8000);

[a,b] = cheby1(4,1,[0.4 0.7],'s');          % Bandpass Chebyshev Type I
figure(2)
[ad, bd] = bilinear(a, b, T);
freqz(ad,bd,512,8000);

[a,b] = cheby2(6,60,0.8,'s');               % Highpass Chebyshev Type II
figure(3)
[ad, bd] = bilinear(a, b, T);
freqz(ad,bd,512,8000);

[a,b] = ellip(3,1,60,[0.4 0.7],'stop','s');   % Bandstop elliptic
figure(4)
[ad, bd] = bilinear(a, b, T);
freqz(ad,bd,512,8000);

