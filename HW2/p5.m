% HW2_P5
% Created by Harrison Weinstein
% Date: 2/20/19

%Solve the IVP first order ODE, Dx + x = sin(t), where x(0) = -1

clear;      %Clear workspace variables

clc;        %Clear command window

x = simplify(dsolve('Dx + x = sin(t)', 'x(0)=-1'))

