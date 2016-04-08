function[pg]=rpgcd(a,b)
if(rem(a,b)==0)
    pg=b;
else
    pg=rpgcd(b,rem(a,b));
end
end