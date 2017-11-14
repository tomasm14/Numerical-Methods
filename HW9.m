%HW9
%Tomas Martinez

%function

clc
clear
close all

syms F(x)

F(x)=-0.9*(x^2)+1.7*x+2.5;

xo=3;

maxit=50;
maxerror=0.01;
%% Fixed point iteration
%itializing variables
iter=0;
ea=100;

fprintf('Fixed point:\n')
while maxit>iter && ea>maxerror
    fprintf('For iteration %0.0f xi = %f with an error of %fpercent\n',iter,xo,ea)
    xn=sqrt((1.7*xo+2.5)/0.9); %breaking down function
    iter=iter+1;
    ea=abs((xn-xo)/xn)*100;
    xo=xn;
end 
%% Newtons method 
%ititializing new variables
iter1=0;
ea1=100;
xo1=5;

dF(x)=diff(F(x));
fprintf('\nNewtons Method:\n')
while maxit>iter1 && ea1>maxerror
    fprintf('For iteration %0.0f xi = %f with an error of %fpercent\n',iter1,xo1,ea1)
    xn=xo1-(F(xo1)/dF(xo1));
    iter1=iter1+1;
    ea1=abs((xn-xo1)/xn)*100;
    xo1=xn;
end 


