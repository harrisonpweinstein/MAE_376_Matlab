% HW2_P10
% Created by Harrison Weinstein
% Date: 2/20/19

%Find the inverse laplace transform of (3s+4)/(s(s+1))

clear;      %Clear workspace variables

clc;        %Clear command window

syms s;     %Declare s as a symbol

F = (3*s+4)/(s*(s+1));  %Set F equal to (3*s+4)/(s*(s+1))

ilaplace(F) %Compute the inverse Laplace Tranform of F