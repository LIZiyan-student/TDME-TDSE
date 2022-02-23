%求EXP_H1x,对应Nx
function EH1x=TDME_EXP_H1x(Nx,d,dt)
c = 1;
V=-c/d;
EH1x = zeros( Nx+1, Nx+1);
for m = 1 : 2 : Nx+1
    if m<Nx+1
    EH1x(m,m)=cos(dt*V);
    EH1x(m,m+1)=sin(dt*V);
    EH1x(m+1,m)=-sin(dt*V);
    EH1x(m+1,m+1)=cos(dt*V);
    end
end
end