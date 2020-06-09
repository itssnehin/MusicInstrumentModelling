function Y=ks(f,length)
%Karplus-Strong model
%   ks(f,length) 
%   f=frequency
%   length=time (seconds)
fs=44100;
%f=220;
N=fix(fs/f);
X=zeros(1,length*fs);

%loop filter
%        z^-N               
b1=[zeros(1,N) 1];

%       1 - H(z)z^-N
a1=[1 zeros(1,N-1) -.5 -.5];



Zi = rand(1, max( max(size(a1)), max(size(b1))) -1);

Y=filter(b1,a1,X,Zi);

