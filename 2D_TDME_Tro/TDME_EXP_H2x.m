%求EXP_H2x,对应Nx
function EH2x=TDME_EXP_H2x(Nx,d,dt)
c=1;
V=-c/d;
EH2x = zeros( Nx+1, Nx+1);
for m = 2 : 2 : Nx+1
    if m<Nx+1
    EH2x(m,m)=cos(dt*V);
    EH2x(m,m+1)=sin(dt*V);
    EH2x(m+1,m)=-sin(dt*V);
    EH2x(m+1,m+1)=cos(dt*V);
    end
end
end