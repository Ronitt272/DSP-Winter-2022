clc
close all
clear all

syms n;
f = (1/2)^n + (-1/3)^n;
F = ztrans(f);
F2 = collect(F);
[num,den] = numden(F2);
Ts = 0.1; % Sampling period
H = tf(sym2poly(num),sym2poly(den),Ts);
pzmap(H)
% linearity
%clear all;
%close all;
syms n z;
x1 = 2.^n;
x2 = 4.^n;
% to prrove ztrans(ax1 +bx2) = aX1 + bX2
a = 2;
b = 3;
X1 = ztrans(x1);
X2 = ztrans(x2);
RHS = a.*X1 + b.*X2;
x = a.*x1 + b.*x2;
LHS = ztrans(x);
disp('LHS')
disp(LHS);
disp('RHS');
disp(RHS);
% Convolution Property
x1=[2,3,4];
syms Z
for i=1:length(x1)
F1(i) = x1(i)*Z^-(i-1);
end
display(F1);
x2=[3,4,5,6];
syms Z
for i=1:length(x2)
F2(i) = x2(i)*Z^-(i-1);
end
display(F2);
x3=conv(x1,x2);
disp(x3);
