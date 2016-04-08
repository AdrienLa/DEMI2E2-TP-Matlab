function[f]=fib(n)
%fonction calculant le ne terme de la suite de fibonacci
if(n==0)
    f=0;
elseif(n==1)
    f=1;
else
    u0=0;
    u1=1;
    for i=2:n
        u2=u0+u1;
        u0=u1;
        u1=u2;
    end
    f=u2;
end
end