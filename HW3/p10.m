% HW3_P10
% Created by Harrison Weinstein
% Date: 3/17/19

%Find all the possible I/O equations. Given equations, f(t)=input, x1 =output

clear;      %Clear workspace variables

clc;        %Clear command window

syms x1(t) x2(t) f(t) t s x1_LT x2_LT F_LT X1 F; %Create symbolic variables

dx1(t) = diff(x1,t);         %Create dx1 as the first derivative of x1
d2x1(t) = diff(diff(x1,t));  %Create d2x1 as the second derivative of x1

dx2(t) = diff(x2,t);         %Create dx2 as the first derivative of x2
d2x2(t) = diff(diff(x2,t));  %Create d2x2 as the second derivative of x2

eqn1 = d2x1 + dx1 + 2*x1 - 2*x2 == 0;   %Create symbolic eqn1
eqn2 = d2x2 + dx2 - 2*x1 + 2*x2 == f(t);%Create symbolic eqn2

eqn1LT = laplace(eqn1,t,s); %Create eqn1LT as the laplace transform of eqn1
eqn2LT = laplace(eqn2,t,s); %Create eqn2LT as the laplace transform of eqn2

eqn1LT = subs(eqn1LT,[laplace(x1,t,s) laplace(x2,t,s) x1(0) dx1(0)],[x1_LT x2_LT 0 0]);  %Replace variables and values with subs
eqn2LT = subs(eqn2LT,[laplace(x1,t,s) laplace(x2,t,s) laplace(f,t,s) x2(0) dx2(0)],[x1_LT x2_LT F_LT 0 0]); %Replace variables and values with subs

eqns = [eqn1LT eqn2LT];     %Create eqns vector to hold both eqn LTs
vars = [x1_LT x2_LT];       %Create vars vector to hold x1_LT and x2_LT
[x1_LT, x2_LT] = solve(eqns, vars); %Solve the symbolic eqns for each variable

x1_LT = subs(x1_LT,F_LT,1); %Replace F_LT with value 1

[num den] = numden(x1_LT);  %Break up x1_LT into num and den

num1 = sym2poly(num);   %Convert num to polynomial
den1 = sym2poly(den);   %Convert den to polynomial

IO_LT = laplace(x1(t),t,s)*den == laplace(f(t),t,s)*num;         %Create Laplace Transform*(I/O eqn) from num and den

IO = ilaplace(IO_LT);    %Compute inverse laplace of IO_LT

IO = subs(IO, {'x1(0)', 'D(x1)(0)', 'D(D(x1))(0)', 'D(D(D(x1)))(0)'}, [0, 0, 0, 0]) %Substitute initial conditions = 0

G = tf(num1,den1)      %Create transfer function from num1/den1