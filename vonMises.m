clc;
clear all;
close all;

A= [2 1 1; 
    1 9 2; 
    1 2 1];

[V, D]=eig(A)

N=7;
x=zeros(3,N);
z=zeros(3,N);
z_ik=zeros(1,N);

%Startwert
x(:,1)=[0.15; 1; 0.25];

for k=2:N
   z(:,k)  = A * x(:,k-1);
   z_ik(k) = max(abs(z(:,k)));
   x(:,k)  = z(:,k) / z_ik(k);
end

z_ik(N)
%x(:,N)./V(:,1)
%x(:,N)./V(:,2)
%x(:,N)./V(:,3)



