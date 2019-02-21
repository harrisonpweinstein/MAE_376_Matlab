syms x;    %declare x as a symbolic variable

f = sin(x)/x;   %set f as function handle for sinc function

F = double(int(f,x,0,inf))      %calculate the definite integral of sinc from 0 to infinity