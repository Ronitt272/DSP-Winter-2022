clc
clear all;
close all;

B = [1 1 1.5];
A = [1 1.5 0.5];

H = filt(B,A)

[lattice_coefficients, ladder_coefficients] = tf2latc(B,A);
disp('The Lattice Coefficients are:');
disp(lattice_coefficients);
disp('The Ladder Coefficients are: ');
disp(ladder_coefficients);
