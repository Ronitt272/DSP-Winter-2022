clc 
clear all
close all

A=1;
fm=2;
t=[0:0.01:1];
subplot(3,2,1);
x_org=A*sin(2*pi*fm*t);
plot(t,x_org);
title('Original Signal');

fs1=40;%For oversampling, fs>2fm
Ts1=1/fs1;
t1=[0:Ts1:1];
subplot(3,2,2);
x1=sin(2*pi*fm*t1);
stem(t1,x1);
title('Time Domain Sampled Signal');

subplot(3,2,3);
y = quant (x1,0.1);
stem(t1,y);
title('Quantized Signal');

subplot(3,2,4);
z = (x1-y);
stem(t1,z);
title('Quantization Error at the sampled points')

subplot(3,2,5);
stem(t1,y,'r');
hold on;
stem(t1,x1,'b');
title('Both Quantized and Sampled Signals');

delta=0.1
Pq = ((delta^2)/12)
Px = ((A^2)/2)
SQNR = Px/Pq
SQNRindB = 20*log10(SQNR)

