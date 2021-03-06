% HW2_P1
% Created by Harrison Weinstein
% Date: 2/20/19

%Compute z1/z2 for two complex numbers and express the result in
%rectangular form

clear;      %Clear workspace variables

clc;        %Clear command window

z1 = -3-j;  %Set the value of z1
z2 = 2*j;   %Set the value of z2

z = z1/z2   %Compute z1/z2 and print the result

if (abs(z1/z2) == abs(z1)/abs(z2))  %Compute |z1/z2| and compare to |z1|/|z2|
    disp('TRUE')                    %If equal, display TRUE
else
    disp('FALSE')                   %If not equal, display FALSE
end