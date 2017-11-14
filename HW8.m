%HW8
%Tomas Martinez
%830896830

clc
clear
close all


F1=150;
u=.55;
m=25;
g=9.81;

Ft=@(t)(u*m*g)/(cos(t)+sin(t))-F1;
fplot(Ft);
grid on
xlim([-1.6,1.6]);
ylim([-800,800]);
%Because Ft is undefined at t=-pi/4 we have to make sure our bracked does
%not incoperate that.

%Upper and lower bracket
low=(-1/2);
up=(1/2);
%Maximum error
me=.0001;

[a,c,e,g]=bisectm(Ft,low,up,me);
[b,d,f,h]=falseposition(Ft,low,up,me);

fprintf('The bisect method calculated a zero at %f using %0.0f iterations\n\n',a,g)
fprintf('The false position method calculated a zero at %f using %0.0f iterations\n\n',b,h)
fprintf('using the bisect method in this case was more effective as it found the answer\nusing %0.0f less iterations',abs(g-h))






