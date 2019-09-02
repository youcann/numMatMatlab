clc;
clear all;
close all;

A= [2 1 1; 
    1 9 2; 
    1 2 1];

[V, D]=eig(A)

%% Variante 1

N=7;
y=zeros(3,N);
w=zeros(3,N);
w_ik=zeros(1,N);

%Startwert
y(:,1)=[0.15; 1; 0.25];

for k=2:N
   w(:,k)  = inv(A) * y(:,k-1);
   w_ik(k) = max(abs(w(:,k)));
   y(:,k)  = w(:,k) / w_ik(k);
end

%Errechneter, betragskleinster Eigenwert
e1 = 1/w_ik(N)

%% Variante 2

y=zeros(3,N);
w=zeros(3,N);
w_ik=zeros(1,N);

%Startwert
y(:,1)=[0.15; 1; 0.25];

for k=2:N
   w(:,k)  = linsolve(A,y(:,k-1));
   w_ik(k) = max(abs(w(:,k)));
   y(:,k)  = w(:,k) / w_ik(k);
end

e2 = 1/w_ik(N)