%HW8
%Tomas Martinez

function [ root, fx, ea, iter ] = falseposition( func,xl,xu,es,varargin )
%This program approximates the root of a function using the false position
%method
%Inputs:
%  func-some function in terms of x
%  xl-lower approximation for the root of the function
%  xu-upper approximation fot the root of the function
%  es-largest error desired in solving the root 
%outputs:
%  root-the root appproximation of the function
%  fx-the function evaluated at its root
%  ea-error accosiated with approximation of root

if nargin<3
    fprintf('At least 3 inputs required')
end
if nargin<4 || isempty(es)
    es=0.0001;    
end 

sign=func(xl,varargin{:})*func(xu,varargin{:});

if sign>0 
    fprintf('Error please make sure you bracket the root correctly')
end

iter=0;
xr=xl;
ea=100;

%max number of iterations so the while loop does not run forever
iterM=60;

while ea>=es && iterM>iter
    xrold=xr;
    xr=xu-((func(xu)*(xl-xu))/(func(xl)-func(xu)));
    iter=iter+1;
    
    if xr~=0
        ea=abs((xrold-xr)/xr)*100;
    end
    
    u=func(xr,varargin{:})*func(xu,varargin{:});
    l=func(xr,varargin{:})*func(xl,varargin{:});
    
    if u<0
        xl=xr;
    elseif l<0
        xu=xr;
    else
        ea=0;
    end
    
    root=double(xr);
    fx=double(func(xr,varargin{:}));
    ea=double(ea);
    iter=double(iter);
end

end

