%求EXP_H2x,对应Nx
function EH2x=EXP_H2x(Nx,d,dt)
V=-1/d^2;
EH2x = zeros( Nx, Nx);
for m = 2 : 2 : Nx
    if m<Nx
    EH2x(m,m)=cos(dt*abs(V));
    EH2x(m,m+1)=-i*sin(dt*abs(V));
    EH2x(m+1,m)=-i*sin(dt*abs(V));
    EH2x(m+1,m+1)=cos(dt*abs(V));
    end
end
end