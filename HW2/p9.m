% HW2_P9
% Created by Harrison Weinstein
% Date: 2/20/19

%Find the laplace transform of the signal -u(t)+2u(t-1)-u(t-2)

clear;      %Clear workspace variables

clc;        %Clear command window

syms t

f = -heaviside(t)+2*heaviside(t-1)-heaviside(t-2);

%fplot(f,[-2,3])

laplace(f)