clc
clear all;
close all;

B = [1 0.12 0.2];
A = [1];

H = filt(B,A)

lattice_coefficients = tf2latc(B,A);
disp(lattice_coefficients);
