clc
clear all
close all

x1_org = [1 12 3 6];
N = length(x1_org);
dft_x1 = calculatedft(x1_org,N);
%%inverse of the Twiddle Factor W
    for n=0:1:N-1
		for k=0:1:N-1
			p=exp(i*2*pi*n*k/N);
			W(n+1,k+1)=p;
        end 
    end
 
disp(W);
n=1:N;
ans = ((W*dft_x1)./N);
disp('idft of x1');
disp(ans);