% HW2_P7
% Created by Harrison Weinstein
% Date: 2/20/19

%Put the expression cos(t) + 3*sin(t) in the form Dsin(omega*t + phi)

clear;      %Clear workspace variables

clc;        %Clear command window

syms t      %Declare s as a symbol
x = combine(cos(t)+3*sin(t),'sincos');   %Convert to Dcos(omega*t + atan(B/A)) this is equivalent to Dsin(omega*t + phi)


