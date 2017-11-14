function nxm = hw4(n,m)
%Tomas Martinez
%8/31/2017 
%This function creates an array with the first row n numbers long and m 
%numbers deep with linear spacing on those rows and the following rows
%being a sum of the column above and the rows to the left.
%Inputs 
% -row
% -column
%Outputs
% -array
if isenum(n)
    error('please type a number in for n')
end
if isenum(m)
    error('please type a number in for m')
end
nxm = zeros(n,m);
nxm(1,:) = 1:m;
nxm(:,1) = 1:n;
for i = 2:n
    for j = 2:m
        nxm(i,j) = sum(nxm(1:i,j)) + sum(nxm(i,1:j));
    end  
end
end

