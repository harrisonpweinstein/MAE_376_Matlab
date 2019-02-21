%User defined function, f is inline, a and b are constants where a<b. This
%calculates the midpoint m of the interval [a,b] and returns the value of
%1/2f(a) + 1/3f(m) + 1/4f(b)

function val = evalf(f, a, b)
    m = (1/2)*(a+b);  %calculate midpoint of a and b
    
    val = (1/2)*f(a)+(1/3)*f(m)+(1/4)*f(b);  %evaluate f at each point and compute val
end
