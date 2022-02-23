%求EXP_H1x,对应Nx
function EH1x=EXP_H1x(Nx,d,dt)
V=-1/d^2;
EH1x = zeros( Nx, Nx);
for m = 1 : 2 : Nx
    if m<Nx
    EH1x(m,m)=cos(dt*abs(V));
    EH1x(m,m+1)=-i*sin(dt*abs(V));
    EH1x(m+1,m)=-i*sin(dt*abs(V));
    EH1x(m+1,m+1)=cos(dt*abs(V));
    end
end
end