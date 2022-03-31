function wdot=wsystem(t, w)
wdot(1) = w(2)
wdot(2) = 3/2*w(1).^2
endfunction
s = -1
w0 = [4;s]
t0 = 0
t = linspace(0,1)
// winit = ode(w0,t0,t,wsystem);
// plot(t,winit)
deff('res=fct_3(s)',['w0 = [4;s];','w =
ode(w0,t0,t,wsystem);','res=w(1,$)-1'])
s = -1
ssol =fsolve(s,fct_3)
// compute solution
w0 = [4;ssol]
t0 = 0
t = linspace(0,1)
wsol = ode(w0,t0,t,wsystem);
plot(t,wsol)
p = get("hdl"); p.children.thickness = 3
