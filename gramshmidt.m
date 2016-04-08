function[Q]=gramshmidt(A)
%Applique le procede de Gram-Shmidt
[n,m]=size(A);
if (rank(A)~=m)
    error('la famille est liee')
end
for j=1:m
    Q(:,j)=A(:,j)/norm(A(:,j));
    for k=j+1:m
        A(:,j)=Q(:,j)-A(:,j)'*Q(:,k)*Q(:,k);
    end
end
Q'*Q
end