% HW3_P10
% Created by Harrison Weinstein
% Date: 3/17/19

%Find all the possible I/O equations.

clear;      %Clear workspace variables

clc;        %Clear command window

syms x1(t) x2(t) f(t) t s x1_LT x2_LT F_LT X1 F;

dx1(t) = diff(x1,t);
d2x1(t) = diff(diff(x1,t));

dx2(t) = diff(x2,t);
d2x2(t) = diff(diff(x2,t));

eqn1 = d2x1 + dx1 + 2*x1 - 2*x2 == 0;
eqn2 = d2x2 + dx2 - 2*x1 + 2*x2 == f(t);

eqn1LT = laplace(eqn1,t,s);
eqn2LT = laplace(eqn2,t,s);

eqn1LT = subs(eqn1LT,[laplace(x1,t,s) laplace(x2,t,s) x1(0) dx1(0)],[x1_LT x2_LT 0 0]);
eqn2LT = subs(eqn2LT,[laplace(x1,t,s) laplace(x2,t,s) laplace(f,t,s) x2(0) dx2(0)],[x1_LT x2_LT F_LT 0 0]);

eqns = [eqn1LT eqn2LT];
vars = [x1_LT x2_LT];
[x1_LT, x2_LT] = solve(eqns, vars);

x1_LT = subs(x1_LT,F_LT,1);

[num den] = numden(x1_LT);

num1 = sym2poly(num);
den1 = sym2poly(den);

G = tf(num1,den1)

X1*den == F*num
