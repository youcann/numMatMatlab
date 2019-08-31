clc;
clear all;
close all;

x_min=0.05;
x_max=0.1;
N=10000; %numer of points
M=20; %number of iterations
x_0=0.08; %start value
x=linspace(x_min,x_max,N);
F=cos(1./x); %function


fp=diff(F)/(x(2)-x(1));
Fprime=[fp, fp(end)];
x_k=[x_0]; %initialize with start value x_0
idx=[];
for k=1:M
    [val, ind] = min(abs(x-x_k(k)));
    fprintf("x_k(k):%f \t x:%f \t ind:%f\n",x_k(k),x(ind),ind)
    x_k(k+1) = x_k(k) - F(ind)/Fprime(ind);
    idx=[idx ind];
end

figure('units','normalized','outerposition',[0 0 1 1])
subplot(3,1,1)
title('F(X)');
hold on;
grid on;
plot(x,F)
plot(x(idx),F(idx),'xk')
hold off;
subplot(3,1,2)
title('Fprime(X)');
hold on;
grid on;
plot(x,Fprime)
hold off;
subplot(3,1,3);
stem(x_k,'o')
title('x_k');