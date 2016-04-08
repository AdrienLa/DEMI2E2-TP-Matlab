function[r,teta]=polaire(x,y)
%Cette fonction calcul les coordonées polaire d'un point
r=sqrt(x^2+y^2);
if(x>0 && y>=0)
    teta=atan(y/x);
elseif(x>0 && y<0)
    teta=atan(y/x)+2*pi;
elseif(x<0)
    teta=atan(y/x)+pi;
elseif(x==0)
    if(y>0)
        teta=pi/2;
    elseif(y<0)
        teta=3*pi;
    end
end