clc
clear all
close all

n=20;%order of the filter 
i = input("which window you wish to use ?");
    if i==1
        window = rectwin(n+1);
    elseif i==2
        window = hamming(n+1);
    elseif i==3
        window = hann(n+1);
    elseif i==4 
        window = kaiser(n+1);
    else disp("Invalid Input");
    end
%bandpass filter
b=fir1(n, [0.25 0.75], 'bandpass', window);
[H1,w] = freqz(b,1);

figure()
subplot(4,2,1);
plot(w/pi, 20*log(abs(H1)));
xlabel("normalized frequency");
ylabel("Magnitude in dB");
title ("Magnitude response of Bandpass Filter");

subplot(4,2,2);
plot(w/pi, angle(H1));
xlabel("normalized frequency");
ylabel("Angle");
title("Phase response of Bandpass Filter");

%bandstop filter 
b2=fir1(n, [0.25 0.75], 'stop', window);
[H2,w] = freqz(b2,1);

subplot(4,2,3);
plot(w/pi, 20*log(abs(H2)));
xlabel("normalized frequency");
ylabel("Magnitude in dB");
title ("Magnitude response of Bandstop Filter");

subplot(4,2,4);
plot(w/pi, angle(H2));
xlabel("normalized frequency");
ylabel("Angle");
title("Phase response of Bandstop Filter");

%low pass filter 

b3=fir1(n, [0.75], 'low', window);
[H3,w] = freqz(b3,1);

subplot(4,2,5);
plot(w/pi, 20*log(abs(H3)));
xlabel("normalized frequency");
ylabel("Magnitude in dB");
title ("Magnitude response of Low Pass Filter");

subplot(4,2,6);
plot(w/pi, angle(H3));
xlabel("normalized frequency");
ylabel("Angle");
title("Phase response of Low Pass Filter");

%high pass filter 

b4=fir1(n, [0.75], 'high', window);
[H4,w] = freqz(b4,1);

subplot(4,2,7);
plot(w/pi, 20*log(abs(H4)));
xlabel("normalized frequency");
ylabel("Magnitude in dB");
title ("Magnitude response of High Pass Filter");

subplot(4,2,8);
plot(w/pi, angle(H4));
xlabel("normalized frequency");
ylabel("Angle");
title("Phase response of High Pass Filter");


