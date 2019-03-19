% HW3_P4
% Created by Harrison Weinstein
% Date: 3/7/19

%Solve the linear system Ax=b using Cramer's Rule

clear;      %Clear workspace variables

clc;        %Clear command window

A = [1 2 -3; -2 1 0; 1 4 -2];   %Create A matrix

b = [3; 5; 4];  %Create b vector

D = det(A);     %Calculte the determinant of A and store as D

if D~=0         %Check if the determinant of is equal to 0    
    for i = 1:rank(A)       %Create for loop from 1 to rank(A) for each solution of x
        Ai = A;             %Set Ai = A
        Ai(:,i) = b;        %Set i-th column of A to b      
        Di = det(Ai);       %Calculate the determinant of Ai and store in Di
        x(i,1) = Di/D;      %Calculate xi and store in x
    end
    
    x     %Display the solution
    
else            %If D = 0
    disp('Determinant of A is 0, A is singular, therefore there are infinitely many solutions')     %Display the message
end