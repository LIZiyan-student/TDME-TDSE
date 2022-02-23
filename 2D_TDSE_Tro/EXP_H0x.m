%求EXP_H0x,对应Nx
function EH0x=EXP_H0x(Nx,We,dt,a,b,judge)
EH0x = zeros( Nx, Nx);
if (judge==1)
    for m = 1 : 1 : Nx
        for n = 1 : 1 : Nx
            if(m==n) && (m<a || m>b)
                EH0x(m,n)=exp(-i*dt*We);
            elseif (m==n) && m>a && m<b
                EH0x(m,n)=exp(-i*dt*10^20);
            end
        end
    end
end
if (judge==0)
     for m = 1 : 1 : Nx
        for n = 1 : 1 : Nx
            if(m==n)
                EH0x(m,n)=exp(-i*dt*We);
            end
        end
     end
end
end