% HW2_P8
% Created by Harrison Weinstein
% Date: 2/20/19

%Find the laplace transform of e^(-a*t-b)

clear;      %Clear workspace variables

clc;        %Clear command window

syms t a b; %Declare t, a, b as symbols

laplace(exp(-a*t-b))    %Compute the laplace transform of the function exp(-a*t-b)