x=linspace(0,2*pi,101);
y=exp(-x).*sin(4*x);
v=linspace(-1,1,101);
w=v.^2;
z=(v.^2).*sin(v).*exp(v);
plot(x,y);
hold on;
plot(v,w);
hold on;
plot(v,z);