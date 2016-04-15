p1=lagrange(@sin,0,3*pi,1);
p2=lagrange(@sin,0,3*pi,2);
p3=lagrange(@sin,0,3*pi,3);
p4=lagrange(@sin,0,3*pi,4);
p5=lagrange(@sin,0,3*pi,5);
y=linspace(0,3*pi,1000);
%plot(y,sin(y),'black');
%hold on;
%plot(y,polyval(p1,y),'red');
%plot(y,polyval(p2,y),'blue');
%plot(y,polyval(p3,y),'green');
%plot(y,polyval(p4,y),'cyan');
%plot(y,polyval(p5,y),'magenta');
E=[];
Eth=[];
for i=1:12
    p=lagrange(@sin,0,3*pi,i);
    E(i)=max(abs(sin(y)-polyval(p,y)));
    Eth(i)=1/(4*(i+1))*((3*pi/i)^(i+1));
end
semilogy(E);
hold on;
semilogy(Eth);