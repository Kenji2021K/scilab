X_in=rand(1000,2);
F_in=zdt1(X_in);
[F_out,X_out,Ind_out] = pareto_filter(F_in,X_in)
drawlater;
plot(F_in(:,1),F_in(:,2),'.r')
plot(F_out(:,1),F_out(:,2),'.b')
drawnow;
