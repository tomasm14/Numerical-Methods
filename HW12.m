%HW12
%Tomas Martinez
 
clc
clear
close all

%variables
W=670000; %weight(N)
A=150; %wing area(m^2)
AR=6.5; %aspect ratio
Cd0=0.018; %drag coefficient with no lift
p=0.413; %density(kg/m^3)

%solved equation for v vs Fd/v
f=@(v)((((v^2)*Cd0*p*A)/2)+((2*(W^2))/(pi*AR*p*A*(v^2))))/v;

fplot(f)
xlim([100 1000]);
ylim([0 500]);

min=fminbnd(@(v) f(v),200,300);

fprintf('optimal steady cruise velocity for a plane under thee following parameters would be %fm/s\n',min)








