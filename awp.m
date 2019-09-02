clc;
clear all;
close all;

h=1/2;
x_max=1;
x_0=0;
N=ceil((x_max-x_0)/h);
y_0=1;

hold on;

%Euler Polygon
x=[x_0];
y=[y_0];
for k=2:N+1
   phi=f(x(k-1),y(k-1));
   x_k=x(k-1)+h;
   y_k=y(k-1)+h*phi;
   x=[x x_k];
   y=[y y_k];
end
plot(x,y)


function f_xy = f(x,y)
f_xy = x.^2 + y.^2 -1;
end

