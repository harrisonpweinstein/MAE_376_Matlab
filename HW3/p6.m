clear;
clc;

syms s;

P = [s^2+s+2 -s-3; -(1/2)*s-1 s^2+(1/2)*s+(3/2)];
u = [1 0;0 .5];

DEN = sym2poly(det(P));

for n = 1:2
    for m = 1:2
        Pnm = P;
        Pnm(:,n) = u(:,m);
        NUM = sym2poly(det(Pnm));
        s = tf('s');
        G(n,m) = tf(NUM,DEN);       
    end
end

G
sys_tf = ss(G);
