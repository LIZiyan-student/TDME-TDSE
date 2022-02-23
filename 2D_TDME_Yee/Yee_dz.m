function Dz=Yee_dz(t,dt,Nx,Ny,x0,y0)
%Dz:电磁（同量纲化)
%数组首项的下标为1
 Dz = zeros(Nx+1,Ny+1);
 Hx = zeros(Nx+1,Ny+1);
 Hy = zeros(Nx+1,Ny+1);

%Nx 表示的是i的个数就是行数,对应列坐标，Ny表示的是j的个数也就是列数，对应行坐标,不分清吃大亏
t0 = 40;%开始执行的时间

%parfor
parfor i = 1  : Nx+1
        for j = 1 : Ny+1 
            Dz(i,j)=sin(5*(j/10-x0-10-0*dt))*exp(-((j/10-x0-10-0*dt)/2.75)^10-((i/10-y0)/2)^2);
        end
end

Hx=Dz;
Hy=Dz;

for T_S = 1:(t/dt)+187hjuh
%   
    for i = Nx+1 : -1 : 2
        for j =Ny+1 : -1 : 2 
            Dz(i,j)=Dz(i,j)+0.5*(Hy(i,j)-Hy(i-1,j)-Hx(i,j)+Hx(i,j-1));
        end
    end

   % Dz(x,y)=sin(5*(t0-T_S*dt))*exp(-((t0-T_S*dt)/2.75)^10);
    for i = Nx+1 : -1 : 2
        for j =  Ny : -1 :1
            Hx(i,j)=Hx(i,j)+0.5*(Dz(i,j)-Dz(i,j+1));
        end
    end
    for i =  Nx : -1 : 1
        for j = Ny+1 : -1 : 2 
            Hy(i,j)=Hy(i,j)+0.5*(Dz(i+1,j)-Dz(i,j));
        end
    end
end
end

