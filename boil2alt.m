%Homework 3
function altitude = boil2alt(boilTemp, degreeUnit)
%This function takes specific boiling temperatures and gives back an
%altitude at which the boiling is taking place
%Inputs:
% -boilTemp(# from 0 to 300)
% -degreeUnit(degrees F,f,C,c)
%Outputs
% -altitude(ft)
if nargin==1
    degreeUnit='f';
else
    if(degreeUnit=='f' || degreeUnit=='F')
        degreeUnit='f';
    elseif(degreeUnit=='c' || degreeUnit=='C')
        degreeUnit='c';
    else
        %Throw error
        error('Valid units are (f,F), (c,C)')
    end
end
if isenum(boilTemp)
    error('Please type in a number')
end
if (boilTemp < 0 || boilTemp > 300.0)
    error('Please enter a number between 0-300')
end


k = 0;
if degreeUnit=='c'
  k = CtoF(boilTemp);
else
  k = boilTemp;
end

p=exp((boilTemp-44.932)/49.161);
altitude=((p/29.921)^(1/5.2559))/(.0000068753);
end

    

 


