function[Xk] = calculatedft(xn,N)
	L=length(xn);
	if(N<L)
		error('N must be greater than or equal to L!!')
	end
	x1=[xn, zeros(1,N-L)];
	for k=0:1:N-1
		for n=0:1:N-1
			p=exp(-i*2*pi*n*k/N);
			W(k+1,n+1)=p;
		end
	end
% 	disp('Transformation matrix for DFT')
% 	disp(W);
	Xk=W*(x1.');
end