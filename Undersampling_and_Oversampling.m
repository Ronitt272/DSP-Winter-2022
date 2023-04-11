clc
clear all
close all

%Original Signal (single tone) 
close all;
fm=2;
fm2 =4;
t=[0:0.01:1];
x_org=sin(2*pi*fm*t) + sin(2*pi*fm2*t);
figure;
plot(t,x_org);
title('Original Signal (multi tone)');


%Oversampling
fs1=40;%For oversampling, fs>2fm
Ts1=1/fs1;
t1=[0:Ts1:1];

figure;
subplot(2,1,1)
x1=sin(2*pi*fm*t1) + sin(2*pi*fm2*t1);
stem(t1,x1)
title('Oversampling');
xlabel('time');
ylabel('Amplitude');
hold on

%Undersampling
fs2=3;
Ts2=1/fs2;
t2=[0:Ts2:1];
subplot(2,1,2)
x2=sin(2*pi*fm*t2)+ sin(2*pi*fm2*t2);
stem(t2,x2)
title('Undersampling');
xlabel('time');
ylabel('Amplitude');
hold off

% %Frequency Domain Analysis
% X=fft(x1);
% freq=0:1:fs1/2; %One sided frequency spectrum
% figure;
% stem(freq, X(1:end/2 +1));
% title('positive side freq spectrum oversampling');
% xlabel('Freq');
% ylabel('Amplitude');

    %1. Oversampling
X=fft(x1);
figure;
freq2=-fs1/2:1:fs1/2; %Both-sided frequency
l=length(X);
stem(freq2, [fliplr((X(1:ceil(l/2)))) fliplr(X(ceil(l/2)+1:end))  ]);
title('Two-sided Frequency Spectrum of Oversampled Signal');
xlabel('Frequency');
ylabel('Amplitude');

    %2. Undersampling
X2=fft(x2);
figure;
freq3=-fs2/2:1:fs2/2; %Both-sided frequency
l=length(X2);
stem(freq3, [fliplr((X2(1:ceil(l/2)))) fliplr(X2(ceil(l/2)+1:end)) ]);
title('Two-sided Frequency Spectrum of undersampled Signal');
xlabel('Frequency');
ylabel('Amplitude');