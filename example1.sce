function plotsin(v)
    x=0:0.1:2*%pi
    y=sin(2*%pi*v*x)
    plot(x,y)
    title('sin plot of freq '+string(v)+")
endfunction