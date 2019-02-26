% HW2_P6
% Created by Harrison Weinstein
% Date: 2/20/19

%Solve the IVP second order ODE, D2x + 4*Dx = 17*cos(t), where Dx(0) = 0 and x(0) = -1

clear;      %Clear workspace variables

clc;        %Clear command window

x = expand(dsolve('D2x + 4*Dx = 17*cos(t)','Dx(0)=0',  'x(0)=-1'))  %Use dsolve to solve the IVP


