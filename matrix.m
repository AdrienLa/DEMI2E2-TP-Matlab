function [A,b]=matrix(n,epsilon)
A=diag(ones(n,1))+epsilon.*(diag(ones(n-1,1),-1)+diag(ones(n-1,1),1))+(epsilon.^2).*(diag(ones(n-2,1),-2) + diag(ones(n-2,1),2));
b=A*ones(n,1);
end
