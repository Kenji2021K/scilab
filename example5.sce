x = linspace(-5.5,5.5,51);
y = 1 ./(1+x.^2);
// Plot
scf(2);
clf(2);
plot(x,y,'ro-');
plot(x,y.^2,'bs:');
xlabel(["x axis";"(independent variable)"]);
ylabel("y axis");
title("Functions");
legend(["Functions #1";"Functions #2"]);
set(gca(),"data_bounds",matrix([-6,6,-0.1,1.1],2,-1));
