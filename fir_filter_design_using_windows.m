clc
clear all
close all


i = input('which window you wish to use ?');
    if i==1
        n = input('Provide the order of the filter');
        window = rectwin(n+1);
        wc = input('Provide the cut-off frequency of the filter (Frequencies must fall in range between 0 and 1) ');
        
    elseif i==2
        n = input('Provide the order of the filter');
        window = bartlett(n+1);
        wc = input('Provide the cut-off frequency of the filter (Frequencies must fall in range between 0 and 1)');
        
    elseif i==3
        n = input('Provide the order of the filter');
        window = hann(n+1);
        wc = input('Provide the cut-off frequency of the filter (Frequencies must fall in range between 0 and 1)');
      
    elseif i==4
        n = input('Provide the order of the filter');
        window = hamming(n+1);
        wc = input('Provide the cut-off frequency of the filter (Frequencies must fall in range between 0 and 1)');
 
    end
    

b = fir1(n, wc, 'low', window);
disp('Filter Coefficients: ');
disp(b');
figure(1)
stem(b);
xlabel('sample (n)');
title('Impulse Response of the filter (h(n))')

[H1,w] = freqz(b,1);

figure(2)
subplot(2,1,1);
plot(w/pi, 20*log(abs(H1)));
xlabel("normalized frequency");
ylabel("Magnitude in dB");
title ("Magnitude response of Bandpass Filter");

subplot(2,1,2);
plot(w/pi, angle(H1));
xlabel("normalized frequency");
ylabel("Angle");
title("Phase response of Bandpass Filter");
