clc
clear all
close all

n=20;
%user can choose the window by changing the 'window' variable below. 
window = hamming(n+1);

%bandpass
b=fir1(n, [0.25 0.75], 'bandpass', window);
[H1,w] = freqz(b,1);

figure(1)
subplot(2,2,1);
plot(w/pi, 20*log(abs(H1)));
xlabel("normalized frequency");
ylabel("Magnitude in dB");
title ("Magnitude response of Bandpass Filter");

subplot(2,2,2);
plot(w/pi, angle(H1));
xlabel("normalized frequency");
ylabel("Angle");
title("Phase response of Bandpass Filter");

%bandstop
b2=fir1(n, [0.25 0.75], 'stop', window);
[H2,w] = freqz(b2,1);

subplot(2,2,3);
plot(w/pi, 20*log(abs(H2)));
xlabel("normalized frequency");
ylabel("Magnitude in dB");
title ("Magnitude response of Bandstop Filter");

subplot(2,2,4);
plot(w/pi, angle(H2));
xlabel("normalized frequency");
ylabel("Angle");
title("Phase response of Bandstop Filter");

%lowpass

figure(2)
b3=fir1(n, [0.75], 'low', window);
[H3,w] = freqz(b3,1);

subplot(2,2,1);
plot(w/pi, 20*log(abs(H3)));
xlabel("normalized frequency");
ylabel("Magnitude in dB");
title ("Magnitude response of Low Pass Filter");

subplot(2,2,2);
plot(w/pi, angle(H3));
xlabel("normalized frequency");
ylabel("Angle");
title("Phase response of Low Pass Filter");

b4=fir1(n, [0.75], 'high', window);
[H4,w] = freqz(b4,1);

subplot(2,2,3);
plot(w/pi, 20*log(abs(H4)));
xlabel("normalized frequency");
ylabel("Magnitude in dB");
title ("Magnitude response of High Pass Filter");

subplot(2,2,4);
plot(w/pi, angle(H4));
xlabel("normalized frequency");
ylabel("Angle");
title("Phase response of High Pass Filter");