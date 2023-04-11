%study of FIR design using window method, lowpass and high pass filter. 

figure(1)
b = fir1(48,[0.35 0.65]);
freqz(b,1,512)

load chirp

t = (0:length(y)-1)/Fs;

figure(2)
bhi = fir1(34,0.48,'high',chebwin(35,30));
freqz(bhi,1)

figure(3)
blo = fir1(34,0.48,'low',chebwin(35,30));
freqz(blo,1)

figure(4)
bstop = fir1(34,0.48,'stop',chebwin(35,30));
freqz(bstop,1)

