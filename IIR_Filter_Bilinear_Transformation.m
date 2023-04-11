clc;
clear all;
close all;
N = 2;
Wc = 800;
FS = 8000;
wc = 2*pi*Wc/FS;
T = 1;
[a, b] = butter(N, wc, 's'); %using 'butter' function to create an analog filter
[ad, bd] = bilinear(a, b, T); %using 'bilinear' function to obtain a digital filter from the analog filter 
freqz(ad,bd,512,8000); 
axis([0 4000 -40 1]);
title('Frequency Response of the Filter');
% 
% syms s
% hs = (s+0.1)/((s+0.1)^2 + 9);
% [N,D]=numden(hs)
% num=sym2poly(N)
% den=sym2poly(D)
% fs=pi/100
% w=0:fs:pi
% [b,a] = bilinear(num,den,fs)
% freqz(b,a)
% title('Bilinear Transformation')