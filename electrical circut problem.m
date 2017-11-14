%Homework 2
%Aug 27th 2017
%Tomas Martinez 830896830

%% Problem 1

clear 
clc
close all

q_0=10;
R=60;
L=9;
C=.00005;
t_i=0;
t_f=0.8;

t=t_i:0.00001:t_f;

q=(q_0)*(exp((-R*t)/(2*L))).*cos(sqrt((1/(L*C))-((R/(2*L))^2)*t));

subplot(2,1,1)
plot(t,q)
title('Charge on the Capacitor over time')
xlabel('Time(t)')
ylabel('Charge(q)')

q2=(q_0)*(exp((-R*t)/(2*L))).*cos(sqrt((1/(L*(C*10)))-((R/(2*L))^2)*t));
subplot(2,1,2)
plot(t,q2)
ylim([-10 0])
title('Charge on the Capacitor over Time With Higher Capacitance')
xlabel('Time(t)')
ylabel('Charge(q)')

%When the capacitance went up the initial charge was more positive because
%in the equation V=Q/C where V is voltage Q is charge and C is capacitance,
%when increasing C you will end up also increasing the charge. 

%% Problem 2 

clear
clc
close all

%concentration (c) versus time (t) for the photodegradation
%of aqueous bromine

%data
D=[10 3.4;20 2.6;30 1.6;40 1.3;50 1.0;60 0.5];
t1=D(:,1);
c1=D(:,2);


%equation
t2=0:1:70;
c2=4.84*exp(-0.034*t2);

plot(t2,c2,'--g',t1,c1,'rd')
ylim([0 4])
title('Concentration of Aqueous Bromine')
xlabel('Time in minutes(t)')
ylabel('Concentration(c)')
legend('Equation Data','Collected Data')






