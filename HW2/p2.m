% HW2_P2
% Created by Harrison Weinstein
% Date: 2/20/19

%Express the complex number -sqrt(3)-3j in polar form

clear;      %Clear workspace variables

clc;        %Clear command window

z = -(3)^.5 - 3j;   %Set the rectangular form of z

r = abs(z)          %Compute the magnitude of z and display
theta = angle(z)    %Compute the angle of z in radians and display

z_pol = ['z = ', num2str(r),' e^(',num2str(theta),'j)'];    %Create string for z in polar form

disp(z_pol)         %Display z in polar form