% HW3_P1
% Created by Harrison Weinstein
% Date: 3/7/19

%Compute the determinant of the given matrix, with "s" as a parameter

clear;      %Clear workspace variables

clc;        %Clear command window

syms s;     %Declare s as a symbol

A = [s+1 1 -1;0 s+2 2;-1 2 s];  %Create A matrix

det_A = simplify(det(A))      %Compute the determinant of A