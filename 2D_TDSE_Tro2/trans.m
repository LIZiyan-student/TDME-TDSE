function Psi=trans(initial,Nx,Ny,dt)
% parameter
    Psi=initial;
    p=3.1415926;
    d=0.1;
    a=1/(48*p^2*d^2);
    % A1
    for row = 1 : 1 : Ny-2
        if (rem((row-1),4)==0||rem((row-2),4)==0)
            for col = 1 : 1 : Nx
                Psi(row,col) = cos(dt*abs(a))*Psi(row,col)+1i/a*cos(dt*abs(a))*Psi(row+2,col);
                Psi(row+2,col) = cos(dt*abs(a))*Psi(row+2,col)+1i/a*sin(dt*abs(a))*Psi(row,col);
            end
        end
    end
%     for row = 1 : 1 : Ny-2
%         if (rem((row-1),4)==0||rem((row-2),4)==0)
%             for col = 1 : 1 : Nx
%                    Psi(row+2,col) = cos(dt*abs(a))*Psi(row+2,col)+i/a*sin(dt*abs(a))*Psi(row,col);
%             end
%         end
%     end
    
%     for row = 2 : 4 : Ny-2
%         for col = 1 : 1 : Nx
%             Psi(row,col) = cos(dt*abs(a))*Psi(row,col)+i/a*sin(dt*abs(a))*Psi(row+2,col);
%         end
%     end
%     for row = 2 : 4 : N
%         for col = 1 : 1 : Nx
%             Psi(row+2,col) = cos(dt*abs(a))*Psi(row+2,col)+i/a*sin(dt*abs(a))*Psi(row,col);
%         end
%     end
    
    % A2
    for col = 1 : 1 : Nx
        for row = 1 : 1 : Ny-2        
             if (rem((row-3),4)==0||rem((row-4),4)==0)
                Psi(row,col) = cos(dt*abs(a))*Psi(row,col)+1i/a*sin(dt*abs(a))*Psi(row+2,col);
                Psi(row+2,col) = cos(dt*abs(a))*Psi(row+2,col)+1i/a*sin(dt*abs(a))*Psi(row,col);
             end
        end
    end
%     for col = 1 : 1 : Nx
%         for row = 1 : 1 : Ny-2
%             if (rem((row-3),4)==0||rem((row-4),4)==0)
%               Psi(row+2,col) = cos(dt*abs(a))*Psi(row+2,col)+i/a*sin(dt*abs(a))*Psi(row,col);
%             end
%         end
%     end
    
  
%     for col = 1 : 1 : Nx
%               for row = 4 : 4 : Ny-2
%             Psi(row,col) = cos(dt*abs(a))*Psi(row,col)+i/a*sin(dt*abs(a))*Psi(row+2,col);
%         end
%     end
%     for col = 1 : 1 : Nx
%         for row = 4 : 4 : Ny-2
%             Psi(row+2,col) = cos(dt*abs(a))*Psi(row+2,col)+i/a*sin(dt*abs(a))*Psi(row,col);
%         end
%     end

    b=-1/(3*p^2*d^2);
    % A3
    for row = 1 : 2 : Ny-1
        for col = 1 : 1 : Nx
            Psi(row,col) = cos(dt*abs(b))*Psi(row,col)+1i/b*sin(dt*abs(b))*Psi(row+1,col);
            Psi(row+1,col) = cos(dt*abs(b))*Psi(row+1,col)+1i/b*sin(dt*abs(b))*Psi(row,col);
        end
    end
%     for row = 1 : 2 : Ny-1
%         for col = 1 : 1 : Nx
%             Psi(row+1,col) = cos(dt*abs(b))*Psi(row+1,col)+i/b*sin(dt*abs(b))*Psi(row,col);
%         end
%     end

    % A4
    for col = 1 : 1 : Nx
        for row = 2 : 2 : Ny-1
            Psi(row,col) = cos(dt*abs(b))*Psi(row,col)+1i/b*sin(dt*abs(b))*Psi(row+1,col);
            Psi(row+2,col) = cos(dt*abs(b))*Psi(row+1,col)+1i/b*sin(dt*abs(b))*Psi(row,col);
        end
    end
%     for col = 1 : 1 : Nx
%         for row = 2 : 2 : Ny-1
%             Psi(row+2,col) = cos(dt*abs(b))*Psi(row+1,col)+i/b*sin(dt*abs(b))*Psi(row,col);
%         end
%     end
    
    % A5
    for row = 1 : 1 : Ny
        for col = 1 : 1 :Nx
            if (rem((col-1),4)==0||rem((col-2),4)==0)
                Psi(row,col) = cos(dt*abs(a))*Psi(row,col)+i/a*sin(dt*abs(a))*Psi(row,col+2);
                Psi(row,col+2) = cos(dt*abs(a))*Psi(row,col+2)+i/a*sin(dt*abs(a))*Psi(row,col);
            end
        end
    end
%     for row = 1 : 1 : Ny
%         for col = 1 : 4 : Nx-2
%             Psi(row,col+2) = cos(dt*abs(a))*Psi(row,col+2)+i/a*sin(dt*abs(a))*Psi(row,col);
%         end
%     end
%     for row = 1 : 1 : Ny
%         for col = 2 : 4 : Nx-2
%             Psi(row,col) = cos(dt*abs(a))*Psi(row,col)+i/a*sin(dt*abs(a))*Psi(row,col+2);
%         end
%     end
%     for row = 1 : 1 : Ny
%         for col = 2 : 4 : Nx-2
%             Psi(row,col+2) = cos(dt*abs(a))*Psi(row,col+2)+i/a*sin(dt*abs(a))*Psi(row,col);
%         end
%     end
%     
    % A6
    for row = 1 : 1 : Ny
        for col =  1 : 1 : Nx-2
            if (rem((col-3),4)==0||rem((col-4),4)==0)
                Psi(row,col) = cos(dt*abs(a))*Psi(row,col)+i/a*sin(dt*abs(a))*Psi(row,col+2);
                Psi(row,col+2) = cos(dt*abs(a))*Psi(row,col+2)+i/a*sin(dt*abs(a))*Psi(row,col);
            end
        end
    end
%     for row = 1 : 1 : Ny
%         for col = 3 : 4 : Nx-2
%             Psi(row,col+2) = cos(dt*abs(a))*Psi(row,col+2)+i/a*sin(dt*abs(a))*Psi(row,col);
%         end
%     end
%     
%     for row = 1 : 1 : Ny
%         for col = 4 : 4 : Nx-2
%             Psi(row,col) = cos(dt*abs(a))*Psi(row,col)+i/a*sin(dt*abs(a))*Psi(row,col+2);
%         end
%     end
%     for row = 1 : 1 : Ny
%         for col = 4 : 4 : Nx-2
%             Psi(row,col+2) = cos(dt*abs(a))*Psi(row,col+2)+i/a*sin(dt*abs(a))*Psi(row,col);
%         end
%     end
%     
    % A7
    for row = 1 : 1 : Ny
        for col = 1 : 2 : Nx-1
            Psi(row,col) = cos(dt*abs(b))*Psi(row,col)+i/b*sin(dt*abs(b))*Psi(row,col+1);
            Psi(row+1,col) = cos(dt*abs(b))*Psi(row,col+1)+i/b*sin(dt*abs(b))*Psi(row,col);
        end
    end
%     for row = 1 : 1 : Ny
%         for col = 1 : 2 : Nx-1
%             Psi(row+1,col) = cos(dt*abs(b))*Psi(row,col+1)+i/b*sin(dt*abs(b))*Psi(row,col);
%         end
%     end
%      
    % A8
    for row = 1 : 1 : Ny
        for col = 2 : 2 : Nx-1
            Psi(row,col) = cos(dt*abs(b))*Psi(row,col)+i/b*sin(dt*abs(b))*Psi(row,col+1);
            Psi(row+1,col) = cos(dt*abs(b))*Psi(row,col+1)+i/b*sin(dt*abs(b))*Psi(row,col);
        end
    end
%     for row = 1 : 1 : Ny
%         for col = 2 : 2 : Nx-1
%             Psi(row+1,col) = cos(dt*abs(b))*Psi(row,col+1)+i/b*sin(dt*abs(b))*Psi(row,col);
%         end
%     end
   
    V=-1/d^2;
    K1=(60+48*p^2*d^2*V)*abs(a);
    K2=10^12;
    
    % A9
    for row = 1 : 1 : Ny
        for col = 1 : 1 : 400
            Psi(row,col)=exp(-1i*dt*K1)*Psi(row,col);
        end
    end  % \:5de6\:90e8\:5206 
    
    for row = 1 : 1 : Ny/2-2
        for col = 401 : 1 : 420
            Psi(row,col)=exp(-1i*dt*K2)*Psi(row,col);
        end
    end    
    for row = Ny/2-1 : 1 : Ny/2+1
        for col =401 : 1 : 420
            Psi(row,col)=exp(-1i*dt*K1)*Psi(row,col);
        end
    end
    for row = Ny/2+2 : 1 : Ny
        for col = 401 : 1 : 420
            Psi(row,col)=exp(-1i*dt*K2)*Psi(row,col);
        end
     end
    
    for row = 1 : 1 : Ny
        for col = 421 : 1 : Nx
            Psi(row,col)=exp(-1i*dt*K1)*Psi(row,col);
        end
    end 
   
end
    
    
    
    
    
    
    
    
    
