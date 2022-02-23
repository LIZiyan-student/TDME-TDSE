function draw(t,dt,Nx,Ny,d02,We)
int=ini_gauss(5,5,d02,Nx,Ny);%初始波包
for j= 1 : t/dt
        int=main(Nx,Ny,95,105,45,55,3.6,dt,int,We);
end
        X = 0 : 1 : Nx-1;%总共Nx个点
        Y = 0 : 1 : Ny-1;%总共Ny给点
        surf(X, Y, real(int));
        view([1,1,1]);
        shading interp; %过渡色彩
        colorbar;
end
        
        