function[lambda,v,iter,normz]=puissance2(A,q0,tol,nmax)
qk=q0;
iter=0
zk1=A*qk;
normz(iter+1)=norm(zk1);
qk1=zk1/norm(zk1);
vk=0;
vk1=(qk1)'*A*qk1;
qk=qk1;
while(abs(vk1-vk)>=tol & iter<nmax)
    iter=iter+1;
    zk1=A*qk;
    normz(iter+1)=norm(zk1);
    qk1=zk1/norm(zk1);
    vk=vk1;
    vk1=(qk1)'*A*qk1;
    qk=qk1;
end
v=qk1;
lambda=vk1;
end