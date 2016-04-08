f=@(x) (x/2-sin(x)+pi/6-sqrt(3)/2);
a=linspace(-pi/2,pi,1000);
plot(a,f(a));
%la methode converge lineairement
df=@(x) (1/2-cos(x));
g=@(x) (x+exp(-20*x.^2).*cos(x));
b=linspace(-1,1,1000);
plot(b,g(b));
dg=@(x) (1-exp(-20*x.^2).*(sin(x)+40*x.*cos(x)));
%La methode de newton ne converge pas pour g avec x0=0 car 0 est un max
%local