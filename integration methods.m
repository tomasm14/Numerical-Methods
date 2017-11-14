%Homework 19
%Tomas Martinez
%11/6/17

clc
clear
close all
format long

%Variables and function
h=30;
f=@(z) 200*(z./(5+z)).*exp((-2*z)/h);
es=.05;

%Anaylitical solution
syms z
alt = double(int(f,z,0,h));

%% Romberg method
n=1;
x1=0:n:h;
I(1,1)= trapz(x1,f(x1));
i=1;
ea=10;
while es<ea
    i=i+1;
    n=n/2;
    x=0:n:h;
    I(i,1)= trapz(x,f(x));
    for k=2:i
        j=2+i-1-k;
        I(j,k)=(4^(k-1)*I(j+1,k-1)-I(j,k-1))/(4^(k-1)-1);
    end
    ea=abs((I(1,i)-I(2,i-1))/I(1,i)*100);
    RI=I(1,i);
end
RI=I(1,i);
double(RI)

%% Gauss Quadrature

x=@(xd) ((h)+(h)*xd)/2;
dx=h/2;
x1=x(1/sqrt(3));
x2=x(-1/sqrt(3));

GI=(f(x2)*dx)+(f(x1)*dx);
double(GI)
 
%% Matlab integral

II=integral(f,0,h);
double(II)


   








