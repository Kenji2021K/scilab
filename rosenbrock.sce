function [f, g, ind]=rosenbrock(x, ind)
f = 100*(x(2)-x(1)^2)^2+(1-x(1))^2;
g(1) = -400.*(x(2)-x(1)^2)*x(1)-2.*(1.-x(1))
g(2) = 200.*(x(2)-x(1)^2)
endfunction
x0 = [-1.2 1];
[f, x] = optim(rosenbrock, x0);
// Display results
mprintf("x = %s\n", strcat(string(x)," "));
mprintf("f = %e\n", f);
