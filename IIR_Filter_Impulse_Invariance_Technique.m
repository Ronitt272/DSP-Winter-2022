clc;
clear all;
close all;
N = 2;
f = 2;
fs = 10;

[b,a] = butter(6,2*pi*f,'s'); %using 'butter' function to create an analog filter
[bz,az] = impinvar(b,a,fs);  %using 'impinvar' function to obtain a digital filter from the analog filter. 

freqz(bz,az,1024,fs);
title('Frequency response of the filter');

