syms x;     %declare x as symbolic variable

t = linspace(.1,7);     %create t vector as 100 evenly spaced points between .1 and 7

f = zeros(1,100);       %preallocate f as a 1x100 vector of zeros

for i=1:100
    f(i) = double(int(exp(x-t(i)).*sin(x/3),x,0,t(i)));     %for each loop calculate the integral at the given t value
end

plot(t,f)