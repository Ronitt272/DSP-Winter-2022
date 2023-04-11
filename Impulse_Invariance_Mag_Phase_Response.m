clc
clear all;
close all;

syms s
hs = (0.28*(s+8))/((s+1)*(s+2))
[N,D]=numden(hs)
num=sym2poly(N)
den=sym2poly(D)
fs=10
w=0:fs:pi
[b,a] = impinvar(num,den,fs)
freqz(b,a)
title('Magnitude and Phase Response using Impulse Invariance Technique')