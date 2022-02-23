%动态波函数扩散
function move_2D_TDSE(t,dt,Nx,Ny,d02,We)%时间与时间间隔
    int=ini_gauss(5,5,d02,Nx,Ny);%初始波包
    for j= 1 : t/dt
        int=main(Nx,Ny,85,95,49.9,50.1,d02,dt,int,We);
        X = 0 : 0.1 : (Nx-1)/10;%总共Nx个点
        Y = 0 : 0.1 : (Ny-1)/10;%总共Ny给点move_2D_TDSE(t,dt,Nx,Ny,d02,We)
        surf(X, Y, abs(int));
        view([0,0,1]);
        shading interp; %过渡色彩
        colorbar;
        M(j)=getframe;
    end
     movie(M,10);
end