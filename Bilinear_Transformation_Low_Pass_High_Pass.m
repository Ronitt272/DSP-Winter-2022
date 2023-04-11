clc
clear all;
close all;

syms s

%Part A (creating the low pass filter)
%In the s domain expression, substituting s with s/omega => s/2

hs = 4/(s^2 + 6.52*s + 4.90)
[N,D]=numden(hs)
num=sym2poly(N)
den=sym2poly(D)
fs=10
w=0:fs:pi
figure(1)
[b,a] = bilinear(num,den,fs)
freqz(b,a)
title('Magnitude and Phase Response of low pass filter');

%Part B (creating the high pass filter)
%In the s domain expression, substituting s with omega/s => 2/s

hs = (s^2)/(s^2 + 6.52*s + 4.90)
[N,D]=numden(hs)
num=sym2poly(N)
den=sym2poly(D)
fs=10
w=0:fs:pi

figure(2)
[b,a] = bilinear(num,den,fs)
freqz(b,a)
title('Magnitude and Phase Response of high pass filter');


