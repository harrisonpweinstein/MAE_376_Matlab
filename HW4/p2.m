% HW4_P2
% Created by Harrison Weinstein
% Date: 4/8/19

%Find the transfer function of the given state space

clear;      %Clear workspace variables

clc;        %Clear command window

A = [0 1; -1/3 -2/3];  %Create A matrix
B = [0; 2/3];  %Create B matrix
C = [-1/9 -2/9];  %Create C matrix
D = 1/3;  %Create D matrix

[num den] = ss2tf(A,B,C,D)  %Calculate transfer function from state space