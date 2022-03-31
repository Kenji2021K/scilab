// Compute Pareto front and filter
function [f_pareto,pop_pareto] =
pareto_filter(fobj_pop_opt,pop_opt);
// Optimal front function definition
f1_opt = linspace(0,1);
f2_opt = 1 - sqrt(f1_opt);
// Plot solution: Pareto front
scf(1);
// Plotting final population
plot(fobj_pop_opt(:,1),fobj_pop_opt(:,2),'g.');
// Plotting Pareto population
plot(f_pareto(:,1),f_pareto(:,2),'k.');
plot(f1_opt, f2_opt, 'k-');
title("Pareto front","fontsize",3);
xlabel("$f_1$","fontsize",4);
ylabel("$f_2$","fontsize",4);
legend(['Final pop.','Pareto pop.','Pareto front.']);
// Transform list to vector for plotting Pareto set
npop = length(pop_opt);
pop_opt = matrix(list2vec(pop_opt),dim,npop)';
nfpop = length(pop_pareto);
pop_pareto = matrix(list2vec(pop_pareto),dim,nfpop)';
// Plot the Pareto set
scf(2);
// Plotting final population
plot(pop_opt(:,1),pop_opt(:,2),'g.');
// Plotting Pareto population
plot(pop_pareto(:,1),pop_pareto(:,2),'k.');
title("Pareto Set","fontsize",3);
xlabel("$x_1$","fontsize",4);
ylabel("$x_2$","fontsize",4);
legend(['Final pop.','Pareto pop.']);
endfunction
