function [zero,iter,res,inc]=dichotomie(func,a,b,tol,nmax)
% Recherche d'un zero dans l'intervalle [a,b] d'une fonction reelle func par la methode de dichotomie.
% En cas de succes, la fonction retourne l'approximation du zero obtenue, le numero de l'iteration a laquelle cette approximation a ete calculee, la valeur de la fonction func en ce point et un vecteur contenant la valeur absolue de la difference entre deux approximations successives (increments).
% Si la recherche echoue, un message d'erreur est affiche.
% Note : la fonction func prend en entree un argument reel et retourne un reel en sortie.
fa=feval(func,a); fb=feval(func,b);
if fa*fb>0
   error('Le signe de la fonction doit differer en chaque extremite de l''intervalle.');
elseif fa==0
   zero=a; res=0; iter=0;
   return
elseif fb==0
   zero=b; res=0; iter=0;
   return
end 
iter=0;
inc=(a+b)*0.5;
err=(b-a)*0.5;
while (err>=tol&iter<=nmax)
   iter=iter+1;
   x=inc(end);
% COMPLETER
   x=(a+b)*0.5;
   if func(a)*func(x)<0
       b=x;
   elseif func(b)*func(x)<0
       a=x;
   end
   inc(end+1)=(a+b)*0.5;
   inc(end-1)=abs(inc(end)-x);
end
if iter>nmax
   fprintf('Le nombre maximum d''iterations a ete atteint sans convergence avec la tolerance desiree.\n');
end
zero=inc(end);
inc(end)=[];
res=feval(func,zero);
return
