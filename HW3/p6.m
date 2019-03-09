clear;
clc;

syms s;

P = [s^2+s+2 -s-3; -s-2 2*s^2+s+3];
u = [1 0;0 1];

den = det(P);
s = tf('s');
for n = 1:2
    for m = 1:2
        Pnm = P;
        Pnm(:,n) = u(:,m);
        num_i = det(Pnm);

        G(n,m)= num_i/den;       
    end
end


G

%sys = ss(G)