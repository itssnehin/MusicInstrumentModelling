function y=wav(length,f,M,P)
% y=wav(length,frequency,pick,pickup)
%  length of output in seconds
%  desired frequency of output
%  pick - relative point of pluck [0-1]
%  pickup - relative point of pickup [0-1]

fs=44100;
N=round(fs/f/2);
pick=round(M*N);
pu=round(P*N);
if(pu==0)
    pu=1;
end
if(pick==0)
    pick=1;
end 


%linear input
x = 0:N-1;
input=.5/pick.*x(1:pick+1);
input(pick+1:N)=-.5/(N-pick).*x(pick+1:N)+.5*N/(N-pick+1);

g=.99;
yr=input;
yl=input;
  subplot(311);
  plot(0:N-1,yr,0:N-1,yl);
  axis([0 N -.5 .5]);
for i=1:fs*length
 y(i)=yr(pu)+yl(pu);
 yrlast=yr(N);
 yr(2:N)=yr(1:N-1);
 yr(1)=-g*yl(1);
 yl(1:N-1)=yl(2:N);
 yl(N)=-g*yrlast;  
% subplot(311);
% plot(0:N-1,yr,0:N-1,yl);
% axis([0 N -.5 .5]);
end
	subplot(312);
  plot(y);
  axis([0 2*N -1.1 1.1]);
  subplot(313);
  plot(y)
  axis([0 fs*length -1.1 1.1]);
	pause(.001)
%end
