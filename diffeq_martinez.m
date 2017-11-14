function [ dydx, d2yd2x ] = diffeq_martinez( x, y )
%Homework 20 
%Tomas Martinez
%inputs
% x-independent variable data
% y-dependent variable data
% outputs
%  dydx-first derivative
%  d2yd2x-second derivative
if length(y)~=length(x)
    error('please enter data of equal length')
end
if length(x)<6
    error('x data must have at least 6 points to have a complete d2yd2x')
end
p=diff(x);
if max(p)-min(p)~=0
    error('x data must be equally spaced')
end

a=x(2)-x(1);
dydx=zeros(length(x),1);
for i=1:(length(x)-2)
    dydx(i)=(-y(i+2)+4*y(i+1)-3*y(i))/(2*a);
end
for i=(length(x)-1):length(x)
    dydx(i)=(3*y(i)-4*y(i-1)+y(i-2))/(2*a);
end
d2yd2x=zeros(length(x),1);
for i=1:(length(x)-3)
    d2yd2x(i)=(-y(i+3)+4*y(i+2)-5*y(i+1)+2*y(i))/(a^2);
end
for i=(length(x)-2):length(x)
    d2yd2x(i)=(2*y(i)-5*y(i-1)+4*y(i-2)-y(i-3))/(a^2);
end
    
end

