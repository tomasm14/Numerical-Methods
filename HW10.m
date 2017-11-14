%HW10
%Tomas Martinez

clc
clear
close all

%Conditions
pt=3;%atm
k=0.05;

%K(x)
K=@(x)(x/(x-1))*sqrt((2*pt)/2+x)-k;

A=fzero(K,0);

fprintf('The mole fraction of H2O that dissociates with the the current condition is %f',A)
