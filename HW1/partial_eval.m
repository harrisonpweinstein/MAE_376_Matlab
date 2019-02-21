%User defined function for P = partial_eval(f,g,a) where f and g are
%functions defined symbolically, and a is a constant. This function returns
%the value of f' + g' at x = a

function P = partial_eval(f,g,a)
    x = a;  %pass the value of a to x
    P = double(subs(diff(f)+diff(g)));  %differentiate f and g, substitute x and add the results
end