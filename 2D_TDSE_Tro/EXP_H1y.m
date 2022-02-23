%求EXP_H1y,对应Ny
function EH1y=EXP_H1y(Ny,d,dt)
V=-1/d^2;
EH1y = zeros( Ny, Ny);
for m = 1 : 2 : Ny
    if m<Ny
    EH1y(m,m)=cos(dt*abs(V));
    EH1y(m,m+1)=-i*sin(dt*abs(V));
    EH1y(m+1,m)=-i*sin(dt*abs(V));
    EH1y(m+1,m+1)=cos(dt*abs(V));
    end
end
end