function [zero,iter,res,inc]=secante(func,x0,x1,tol,nmax)
% Recherche d'un zero d'une fonction func derivable par la methode de Newton a partir du point x0.
% En cas de succes, la fonction retourne l'approximation du zero obtenue, le numero de l'iteration a laquelle cette approximation a ete calculee, la valeur de la fonction func en ce point et un vecteur contenant la valeur absolue de la difference entre deux approximations successives (increments).
% Si la recherche echoue, un message d'erreur est affiche.
% Note : la fonction func et sa derivee dfunc prennent en entree un argument scalaire et renvoient un scalaire en sortie.
x=x0;
inc=0;
iter=0; 
diff=tol+1;
while (abs(diff)>=tol&iter<=nmax)
   iter=iter+1;
% COMPLETER
   diff=func(x)/((func(x)-func(x1))/(x-x1));
   x1=x;
   x=x-diff;
   inc(iter)=abs(diff);
end
if iter>nmax
   fprintf(['Le nombre maximum d''iterations a ete atteint sans convergence avec la tolerance desiree.\n']);
end
zero=x;
res=feval(func,x);
return
