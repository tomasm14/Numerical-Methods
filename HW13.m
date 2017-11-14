%HW 13
%Tomas Martinez

clc
clear


mix1=[3,1,1,2,1];
mix2=[1,2,1,3,1];
mix3=[1,1,0,3,3];
mix4=[2,0,3,1,2];
mix5=[1,2,3,0,2];

mixT=[mix1;mix2;mix3;mix4;mix5];
amt=[128;118;112;112;104].*(16);
opt=((mixT)^-1)*(amt);





