% HW3_P2
% Created by Harrison Weinstein
% Date: 3/7/19

%Compute the inverse of the given matrix with "a" as a parameter

clear;      %Clear workspace variables

clc;        %Clear command window

syms a;     %Declare a as a symbol

A = [a 0 -1; 0 a+1 2; 1 0 a+2];  %Create A matrix

inv_A = inv(A) %Compute the transpose of the adjunct of A
