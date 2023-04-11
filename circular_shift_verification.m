clc
clear all
close all

x1_org = [1 2 3 4]; %original signal
N = length(x1_org); %calculating the length of the original signal

x1_shifted= [3 4 1 2]; %the circularly shifted signal

n=1:N; 
X1 = calculatedft(x1_org,N); %calculating the dft of the original signal

disp('DFT of the original signal');
disp(X1);%display dft of original signal


X = calculatedft(x1_shifted,N);%calculating dft of shifted signal

%for the exponential factor, we choose L=2 as the original signal is
%circularly shifted by 2 units 

for k = 0:1:N-1
    X2 = X*exp(-1*i*2*pi*2*k/N); %multiplying the dft of shifted signal by the exponential factor 
end

disp('DFT of circularly shifted signal multiplied by the exponential factor');
disp(X2); %display dft of resultant signal

