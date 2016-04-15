f=@(x) (1./(1+x.^2));
y=linspace(-5,5,1000);

p2=lagrange(f,-5,5,2);
p4=lagrange(f,-5,5,4);
p8=lagrange(f,-5,5,8);
p12=lagrange(f,-5,5,12);
plot(y,feval(f,y),'black');
hold on;
plot(y,polyval(p2,y),'red');
plot(y,polyval(p4,y),'blue');
plot(y,polyval(p8,y),'green');
plot(y,polyval(p12,y),'cyan');