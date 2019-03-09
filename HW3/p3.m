% HW3_P3
% Created by Harrison Weinstein
% Date: 3/7/19

%Solve the linear system Ax=b using inv(A) with "a" as a parameter

clear;      %Clear workspace variables

clc;        %Clear command window

syms a;     %Declare a as a symbol

A = [a 1 -2; -1 2*a 1; 0 1 3*a];    %Create A matrix

b = [a; 4*a; 3*a+2];    %Create b vector

x = inv(A)*b;   %Solve for x

simplify(x)     %Simplify x and output the result