%HW 11
%Tomas Martinez

m=0.1; %mass
Vo=0.8; %velocity
g=9.81; %gravity
C=1; %coeficiant
p=1000; %water density
B=10; %angle incident
O=10; %angle of stone

V=@(d) sqrt((16*m*g)/(pi*C*p*(d^2)))/sqrt(1-(8*m*(tan(B)^2))/(pi*(d^3)*C*p*sin(O)))-Vo;

[D,v]=fzero(V,.1);

fprintf('The density needed to skip a flat stone with the initial conditions given is %f\n', D)

