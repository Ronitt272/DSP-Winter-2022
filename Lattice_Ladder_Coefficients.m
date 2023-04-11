clc
clear all;
close all;

B = [1 2 3 2];
A = [1.0 0.9 -0.8 0.5];

H = filt(B,A)

[lattice_coefficients, ladder_coefficients] = tf2latc(B,A);
disp('The Lattice Coefficients are:');
disp(lattice_coefficients);
disp('The Ladder Coefficients are: ');
disp(ladder_coefficients);


