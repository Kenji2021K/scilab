function f=zdt1(x)
f1_x1 = x(:,1);
g_x2 = 1 + 9 * ((x(:,2)-x(:,1)).^2);
h = 1 - sqrt(f1_x1 ./ g_x2);
f(:,1) = f1_x1;
f(:,2) = g_x2 .* h;
endfunction
