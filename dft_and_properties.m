clc
clear all
close all

x1_org = [1;12;2;6];
N = length(x1_org);
a = 3;
x1 = a*x1_org;

x2_org= [2;5;7;4];
b=4;
x2 = b*x2_org;

%%Twiddle Factor W
    for k=0:1:N-1
		for n=0:1:N-1
			p=exp(-i*2*pi*n*k/N);
			W(k+1,n+1)=p;
        end 
    end
 
disp(W);
n=1:N;
X1 = W*x1;
disp('dft of x1');
disp(X1);
figure;
stem(n-1,X1)

X2 = W*x2;
disp('dft of x2');
disp(X2);


disp('dft of x1 + dft of x2');
X3 = X1+X2;
disp(X3);
figure;
stem(n-1,X3);
title('dft of x1 + dft of x2');
xlim([-1 4]);

X4 = W*(x1+x2) ;
disp('dft of (x1 + x2)');
disp(X4)
figure;
stem(n-1,X4)
title('dft of (x1 + x2)');
xlim([-1 4]);


X5 = fft(x1+x2);
disp('dft of x1+x2 using fft inbuilt function');
disp(X5);


% Convolution for 2 sequences for N=4


x = [1 2 3 4]  %system input
y = [2 6 1]  %system response
pad_zeros = length(x)+length(y)-1;
disp('Convolution using DFT');
xConvy = ifft(calculatedft(x,pad_zeros).*calculatedft(y,pad_zeros));
disp(xConvy);
disp('Convolution by in-built function');
x_conv = conv(x,y);
disp(x_conv);

flipped_y = fliplr(y);
conj_flipped_y = conj(flipped_y);

disp('LHS');
y_conv = conv(x,conj_flipped_y);
disp(y_conv);

disp('RHS');
yConvy = ifft(calculatedft(x,pad_zeros).*conj(calculatedft(y,pad_zeros)));
disp(yConvy);



