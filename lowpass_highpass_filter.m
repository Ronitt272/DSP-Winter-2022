clc
clear all
close all 
h1= [1/2 1/2]
h2= [1/4 -1/3]

%%Calculating convolution to obtin cascaded impulse response of the both
%%the impulse responses in series
h3= conv(h1,h2);
figure(1);
freqz(h1);
title('Low Pass Filter');
figure(2);
freqz(h2);
title('High Pass Filter');
figure(3);
freqz(h3);
title('Bandpass Filter')
figure(4);
%%Adding the impulse responses
h4=h1+h2;
freqz(h4);
title('All Pass Filter')
figure(5);
%%Subtracting the impulse responses
h5=h1-h2;
freqz(h5);
title('Bandstop Filter')