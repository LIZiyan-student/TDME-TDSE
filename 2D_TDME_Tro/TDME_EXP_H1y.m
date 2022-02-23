%求EXP_H1y,对应Ny
function EH1y=TDME_EXP_H1y(Ny,d,dt)
c=1;
V=c/d;
EH1y = zeros( Ny+1, Ny+1);
for m = 1 : 2 : Ny+1
    if m<Ny+1
    EH1y(m,m)=cos(dt*V);
    EH1y(m,m+1)=sin(dt*V);
    EH1y(m+1,m)=-sin(dt*V);
    EH1y(m+1,m+1)=cos(dt*V);
    end
end
end