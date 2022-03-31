//model with parameters p
function y = FF(x, p)
y = p(1)*(x-p(2))+p(3)*x.*x;
endfunction
Z = [Y;X];
//The criterion for evaluating the error
function e = G(p,z)
y = z(1),x=z(2);
e = y-FF(x,p);
endfunction
//Solve the problem giving an initial guess for p
