function A0_af=TDME_tran(Nx,Ny,A0,d,dt)
    %A0 = Dz0+Hx0+Hy0;
A0_af=A0 ;
c = 1;
V=c/d;
b=dt*V;
%The core code is as followed
 for i = Nx-1:-2:1
        for j = Ny-1 :-2:1
            A0_af(i,j+1) = A0_af(i,j+1)*cos(b) + A0_af(i+1,j+1)*sin(b);
            A0_af(i+1,j+1) = -A0_af(i,j+1)*sin(b) + A0_af(i+1,j+1)*cos(b);
        end
    end

    for i = Nx-1:-2:1
        for j = Ny-1:-2:1
            A0_af(i+1,j+1) = A0_af(i+1,j+1)*cos(b) + A0_af(i+2,j+1)*sin(b);
            A0_af(i+2,j+1) = -A0_af(i+1,j+1)*sin(b) + A0_af(i+2,j+1)*cos(b);
        end
    end
    
    for i = Nx-1 :-2:1
        for j = Ny-1 :-2:1
            A0_af(i+1,j) = ( A0_af(i+1,j)*cos(-b) + A0_af(i+1,j+1)*sin(-b) );
            A0_af(i+1,j+1) = ( -A0_af(i+1,j)*sin(-b) + A0_af(i+1,j+1)*cos(-b) );
        end
    end
    
    for i = Nx-1:-2:1
        for j = Ny-1:-2:1
            A0_af(i+1,j+1) = ( A0_af(i+1,j+1)*cos(-b) + A0_af(i+1,j+2)*sin(-b) );
            A0_af(i+1,j+2) = ( -A0_af(i+1,j+1)*sin(-b) + A0_af(i+1,j+2)*cos(-b) );
        end
    end

%  H1x,H2x,H1y,H2y分开作用
% A0_af = A0_af+A1;
%Dz0_af = zeros(Nx+1,Ny+1);  %创建一个Nx行Ny列的二维矩阵,初始化为0
%for i = 1 : 2 : Nx+1
 %       for j = 1 : 2 : Ny+1 
 %           Dz0_af(i,j)= A0(i,j);
 %       end
%end
% int_af=int_af1+int_af2;
% X = 0 : 1 : Nx-1;%总共Nx个点
% Y = 0 : 1 : Ny-1;%总共Ny给点
% surf(X, Y, real(int));
% view([0,0,1]);
% shading interp; %过度色彩
end