clc
close all;
clear all;

N = 5; %Length of the filter
wc = pi/5;
dw = 1/5;
tau = (N-1)/2;
k = 0:N-1;
Mag_Hd = [1.0 0.7 0 0 0.7];
Pha_Hd = [-2*pi*dw*tau*k];
Hd = Mag_Hd.*exp(j*Pha_Hd);
h=ifft(Hd);

figure(1)
subplot(3,1,1);
plot(k,Mag_Hd);
title('Magnitude Response');
xlabel('Frequency (k)');

subplot(3,1,2);
plot(k,Pha_Hd);
title('Phase Response');
xlabel('Frequency (k)');

subplot(3,1,3);
stem(k,h);
title('Impulse Response');
xlabel('Frequency (k)');

figure(2)
freqz(h);
title('Frequency Response');

