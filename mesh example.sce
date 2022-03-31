coord_lx = [0 1 2 3 4]; coord_x = repmat(coord_lx,1,4);
coord_ly = [0 0 0 0 0]; coord_y = [];
for i=1:4, coord_y = [coord_y, coord_ly+i-1]; end
coord = [coord_x;coord_y]';
// Data: Connectivity matrix
inpoel = zeros(4*3*2,3); index = 1;
for j=1:3,
for i=1:4,
ind1 = i+(j-1)*5; ind2 = (i+1)+(j-1)*5;
ind3 = (i+1)+j*5; ind4 = i+j*5;
inpoel(index,:) = [ind1,ind3,ind4];
inpoel(index+1,:) = [ind1,ind2,ind3];
index = index + 2;
end
end
// Data: some derived data
np = size(coord,1); nt = size(inpoel,1);
xtn = coord(inpoel,1); ytn = coord(inpoel,2);
xn = coord(:,1); yn = coord(:,2);
xtn = matrix(xtn, nt, length(xtn)/nt)';
xtrimesh = [xtn; xtn($,:)];
ytn = matrix(ytn, nt, length(ytn)/nt)';
ytrimesh = [ytn; ytn($,:)];
xbar = mean(xtn,'r'); ybar = mean(ytn,'r');
// Plot
scf(10); clf(10);
xfpolys(xtrimesh,ytrimesh,repmat(7,1,nt));
plot(xn,yn,'bo');
xstring(xn,yn,string(1:np));
xstring(xbar,ybar,string(1:nt),0,1);
set(gca(),"data_bounds",matrix([-1,5,-1,4],2,-1));
xtitle("A mesh example");
