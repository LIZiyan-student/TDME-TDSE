%求EXP_H0y,对应Ny,行数纵坐标
function EH0y=EXP_H0y(Ny,We,dt,d,c,judge)
EH0y = zeros( Ny, Ny);
if(judge==1)
    for m = 1 : 1 : Ny
        for n = 1 : 1 : Ny
            if(m==n)&&(m>d)&&(m<c)
                EH0y(m,n)=exp(-i*dt*We);
            elseif(m==n)&&(m<d || m>c)
                EH0y(m,n)=exp(-i*dt*10^20);
            end
        end
    end
end
if(judge==0)
     for m = 1 : 1 : Ny
        for n = 1 : 1 : Ny
              if(m==n)
                  EH0y(m,n)=exp(-i*dt*We);
              end
        end
     end
end
end

                  