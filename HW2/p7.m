% HW2_P7
% Created by Harrison Weinstein
% Date: 2/20/19

%Put the expression cos(t) + 3*sin(t) in the form D=sin(omega*t + phi)

clear;      %Clear workspace variables

clc;        %Clear command window

A = 1;

B = 3;

D = (1^2 + 3^2)^(1/2);

w = 1;

phi = atan(A/B);

f = [num2str(D),'*sin(',num2str(w),'*t + ',num2str(phi),')'];

disp(f)