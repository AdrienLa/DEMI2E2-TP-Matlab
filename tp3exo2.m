n=input('Entrez n :')
if(n==0)
    2
else
    u0=1;
    v0=2;
    for i=1:n
        u1=(u0+v0)/2;
        v1=sqrt(u1*v0);
        u0=u1;
        v0=v1;
    end
    sqrt(27)/v1
end

epsilon=input('Entrer epsilon strictement positif :')
while(epsilon<=0)
   epsilon=input('Strictement positif :')
end
u0=1;
v0=2;
while(abs((u0-v0)/(u0+v0))>epsilon)
    u1=(u0+v0)/2;
    v1=sqrt(u1*v0);
    u0=u1;
    v0=v1;
end
sqrt(27)/v0