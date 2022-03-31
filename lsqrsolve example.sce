// Example 4
function y=fgauss(x, A, x0, sigma)
y = A*exp(-(x-x0).^2/(2*sigma^2))
endfunction
xdata = linspace(0,1)';
A = 1.0;
x0 = 0.5;
sigma = 0.1;
ydata = fgauss(xdata, A, x0, sigma) +
(rand(xdata)-0.5)*0.1;
// plot(xdata,ydata)
function err=fgausseq(param, m)
A = param(1);
x0 = param(2);
sigma = param(3);
err = ydata -fgauss(xdata, A, x0, sigma);
endfunction
pinit = [0.25; 0.25; 0.25]
[psol,v, info] =
lsqrsolve(pinit,fgausseq,size(xdata,1))
disp(psol)
plot(xdata,ydata,'ko')
p = get("hdl"); p.children.thickness = 3
plot(xdata,fgauss(xdata, psol(1), psol(2),
psol(3)),'b-')
p = get("hdl"); p.children.thickness = 3
