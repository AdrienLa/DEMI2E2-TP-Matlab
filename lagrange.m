function [p]=lagrange(func,a,b,n)
x=linspace(a,b,n+1);
f=feval(func,x');
v=vander(x);
p=v\f;
end