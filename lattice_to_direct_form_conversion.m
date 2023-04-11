clc
clear all;
close all;

disp('Lattice form coefficients are:');
K1 = 0.1
K2 = 0.2

[num, den] = latc2tf([K1 K2]);
disp('Direct form coefficients are: ');
disp(num);

H = filt(num,den)

