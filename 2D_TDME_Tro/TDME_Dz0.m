function Dz0=TDME_Dz0(Nx,Ny,x0,y0)
Dz0 = zeros(Nx+1,Ny+1);  %创建一个Nx行Ny列的二维矩阵,初始化为0
for i = 1 : 2 : Nx+1
        for j = 1 : 2 : Ny+1 
            Dz0(i,j)=sin(5*(j/10-x0))*exp(-((j/10-x0)/2.75)^10-((i/10-y0)/2)^2);
        end
end
end