% HW2_P4
% Created by Harrison Weinstein
% Date: 2/20/19

%Find all the values of (-1)^(1/6)

clear;      %Clear workspace variables

clc;        %Clear command window

n = 6;      %Set value of root

z = -1;      %Set value of z

r = abs(z); %Compute magnitude of z

theta = angle(z);   %Compute angle of z

roots(n-1);     %Initialize roots matrix

for k = 0:(n-1)     %Initiate for loop to count through k values
    roots(k+1) = ((r)^(1/n))*(cos((theta+2*k*pi)/n)+1i*sin((theta+2*k*pi)/n));  %Compute roots for each value of k
end

disp(roots)     %Disp all roots