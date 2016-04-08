u=zeros(1,20);
u(1)=0;
u(2)=1;
for i = 3:20
   u(i)=u(i-1)+u(i-2);
end
v=[];
v(1)=0;
v(2)=1;
n=2;
while v(n)<=50000
    n=n+1;
    v(n)=v(n-1)+v(n-2);
end
v(end-1)