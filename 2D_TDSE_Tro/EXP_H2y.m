%求EXP_H2y,对应Ny
function EH2y=EXP_H2y(Ny,d,dt)
V=-1/d^2;
EH2y = zeros( Ny, Ny);
for m = 2 : 2 : Ny
    if m<Ny
    EH2y(m,m)=cos(dt*abs(V));
    EH2y(m,m+1)=-i*sin(dt*abs(V));
    EH2y(m+1,m)=-i*sin(dt*abs(V));
    EH2y(m+1,m+1)=cos(dt*abs(V));
    end
end
end