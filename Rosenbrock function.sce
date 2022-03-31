function f=rosenbrockC(x1, x2)
x = [x1 x2];
f = 100.0 *(x(2)-x(1)^2)^2 + (1-x(1))^2;
endfunction
xdata = linspace(-2,2,100);
ydata = linspace(-2,2,100);
contour( xdata , ydata , rosenbrockC , [1 10 100 1000])
