function [x,iter,res]=jacobi(A,b,x0,nmax,tol)
% Resolution du systeme lineaire A*x=b par la methode iterative de ...
% La matrice A d'ordre N du systeme ne doit pas etre singuliere et le vecteur colonne
% b au second membre doit etre de taille N.
% En entree :
% le tableau x0 contient le premier terme de la suite des vecteurs iteres,
% le reel tol est la tolerance utilisee pour le critere d'arret,
% l'entier nmax est le nombre maximal d'iterations autorisees.
% En sortie :  
% l'entier iter contient le nombre d'iterations necessaires pour atteindre la convergence,
% le vecteur res contient la norme du residu a chaque iteration.
% Resolution du systeme lineaire A*x=b par la methode iterative de ...
% La matrice A d'ordre N du systeme ne doit pas etre singuliere et le vecteur colonne
% b au second membre doit etre de taille N.
% En entree :
% le tableau x0 contient le premier terme de la suite des vecteurs iteres,
% le reel tol est la tolerance utilisee pour le critere d'arret,
% l'entier nmax est le nombre maximal d'iterations autorisees.
% En sortie :  
% l'entier iter contient le nombre d'iterations necessaires pour atteindre la convergence,
% le vecteur res contient la norme du residu a chaque iteration.
[n,m]=size(A);
if n~=m
   error('La matrice doit etre carree');
end
if cond(A)>1e10
   error('La matrice semble singuliere...');
end
if (size(x0,1)~=n||size(x0,2)~=1)
   error('Le vecteur initial doit etre un vecteur colonne compatible avec la matrice');
end
% initialisation
iter=0;
r=b-A*x0; 
r0=norm(b); 
if (r0==0.)
   r0=1.;
end
err(1,1)=norm(r)/r0;
x=x0;
xnew=x0;
% boucle
while (err(end,1)>tol&iter<nmax)
   iter=iter+1;    
% mise a jour de l'approximation
% A COMPLETER
   for i=1:n
       xnew(i)=(b(i)-A(i,[1:i-1,i+1:n])*x([1:i-1,i+1:n]))/A(i,i);
   end
   x=xnew;
% calcul du residu
   r=b-A*x;
   res(iter)=norm(r);
% calcul du critere pour le test d'arret    
   err(iter,1)=res(iter)/r0;
end
if (err(end,1)>tol)
   disp('Nombre maximum d''iterations atteint sans que le critere d''arret soit satisfait.');
   disp('Veuillez examiner la suite des residus.');
end
end
