% HW3_P5
% Created by Harrison Weinstein
% Date: 3/7/19

%Find the eigenvalues and eigenvectors of the given matrix with "a" as a
%parameter

clear;      %Clear workspace variables

clc;        %Clear command window

syms a;     %Declare a as a symbol

A = [0 a; a 0];     %Create A matrix

[V D] = jordan(A)