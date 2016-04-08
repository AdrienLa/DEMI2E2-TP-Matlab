function[fact]=rfactorielle(n)
if(n==0)
    fact=1;
else
    fact=n*rfactorielle(n-1);
end
end