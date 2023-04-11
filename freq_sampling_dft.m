clc;
clear all; close all;
N= [10, 15, 30, 50, 100]; %creating an array for data points
p=length (N); %calculating length of the array 

for i = 1:p
n = 0:1:N(i)-1; 
f1=10;  %first frequency present in the signal
f2=12;  %second freqyency present in the signal
fs=50;   %sampling frequency
x=sin(2*pi*(f1/fs)*n )+sin(2*pi*(f2/fs)* n); 
N_fft=256;  %choosing number of points for DFT
X=fft(x,N_fft )/N_fft; f=fs/2*linspace (0,1,N_fft/2); %calculating DFT
subplot (2,3,i), plot (f,abs (X (1:length (f)))), xlabel('f'), ylabel('|X (f) |'), title(['Spectrum with N=', num2str(N(i))]);
end
