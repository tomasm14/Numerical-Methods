%HOMEWORK 18
%Tomas Martinez
%11-2-2017

clc
clear 
close all

%data
t=[140;141;142;143;144;145;146;147;148;149];
co2=[15.72;15.53;15.19;15.56;16.21;17.39;17.36;17.42;17.60;17.75];
o2=[15.49;16.16;15.35;15.13;14.20;14.23;14.29;12.74;14.74;13.68];

%simpsons rule
Sco2=Simpson_Martinez(t,co2);
So2=Simpson_Martinez(t,o2);

%trapazoidal rule
Tco2=trapz(t,co2);
To2=trapz(t,o2);

fprintf('Calculated CO2 consumed:\nSimpsons(1/3)=%fg\nTrapazoidal=%fg\n->Difference=%f\n',Sco2,Tco2,abs(Sco2-Tco2))
fprintf('Calculated O2 consumed:\nSimpsons(1/3)=%fg\nTrapazoidal=%fg\n->Difference=%f\n',So2,To2,abs(So2-To2))
