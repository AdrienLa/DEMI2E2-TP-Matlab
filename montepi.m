function[r]=montepi(n)
%calcul une valeur approchee de pi par la methode de montecarlo
%il faut n = 1 000 000 pour obtrenir 2 decimales exactes a coup sur
if(n<=10000)
    r=4*sum(sum(rand(n,2).^2,2)<1)/n;
else
    c=0;
    for i=1:n
        x=rand();
        y=rand();
        if(x^2+y^2<1)
            c=c+1;
        end
    end
    r=4*c/n;
end
end