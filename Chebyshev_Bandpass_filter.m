clc 
clear all;
close all;
T = 1;
%Assuming Sampling Frequency (Fs) = 20kHz
%According to question, fpass = 2kHz, fstop = 8kHz, wpass = 0.2*pi, wstop = 0.8pi

[a,b] = cheby1(4,1,[0.2*pi 0.8*pi],'s');          % Bandpass Chebyshev Type I
figure(1)
[ad, bd] = bilinear(a, b, T);
freqz(ad,bd,512,8000);
