%Homework 7
%Tomas Martinez
%9/12/2017

%% Problem 1
%this scrpit is to analyse taylor series and error


clc
clear 
close all

syms Ty(x)
A(x)=25*(x^3)-6*(x^2)+7*x-88;
a=3; %number we want to approximate
Ty=0;

for n=0:1:3
    f=diff(A,n);
    Ty=Ty+(((f)*((a-x)^n))/factorial(n));
    est=Ty(1);
    Er=(A(3)-est)/A(3)*100;
    fprintf('the aproximation of f for a order %.f taylor series is %0.0f\n This aproximation yields and error of %1f percent\n',n,est, Er)
end 


%% Problem 2

ss=.25; %step size
d=2; %derivative we want to evaluate

%Analytical solution
dF(x)=diff(A(x));
as=dF(d);

%forward aproximation
Fr=(A(d+ss)-A(d))/(ss);
Er_Fr=abs(Fr-as);
fprintf('The forward approximation for the derivative of %.f is %f\n which yields an truncated error of %f\n',d,Fr,Er_Fr)

%backward approximation
Bw=(A(d)-A(d-ss))/(ss);
Er_Bw=abs(Bw-as);
fprintf('The Backward approximation for the derivative of %.f is %f\n which yields an truncated error of %f\n',d,Bw,Er_Bw)

%center approximation
c=(A(d+ss)-A(d-ss))/(ss*2);
Er_c=abs(c-as);
fprintf('The center approximation for the derivative of %.f is %f\n which yields an truncated error of %f\n',d,c,Er_c)

%Remainder term
d2F(x)=diff(A(x),2);
R=(d2F(d)*(ss))/factorial(d);
fprintf('The remainder term is %0.0f\n',R)
%The truncated error found in the forward approximation can be compared directly
%to the remainder term, the remainder term is very similar to this approximation
%because they are essentially the same thing







