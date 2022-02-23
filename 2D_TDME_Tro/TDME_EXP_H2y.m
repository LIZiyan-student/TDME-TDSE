%求EXP_H2y,对应Ny
function EH2y=TDME_EXP_H2y(Ny,d,dt)
c=1;
V=c/d;
EH2y = zeros( Ny+1, Ny+1);
for m = 2 : 2 : Ny+1
    if m<Ny+1
    EH2y(m,m)=cos(dt*V);
    EH2y(m,m+1)=sin(dt*V);
    EH2y(m+1,m)=-sin(dt*V);
    EH2y(m+1,m+1)=cos(dt*V);
    end
end
end