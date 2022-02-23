%动态波函数扩散
function move_2D_TDSE(t,dt,Nx,Ny,d02,x0,y0,k)%时间与时间间隔
    tic
    timestep=t/dt;
    Psi=ini(k,x0,y0,d02,Nx,Ny);%初始波包
    for j= 1 : 1 : timestep
        Psi=trans(Psi,Nx,Ny,dt);
        X = -50 : 0.1 : (Nx-500-1)/10;%总共Nx个点
        Y = 0 : 0.1 : Ny/10;%总共Ny+1给点move_2D_TDSE(t,dt,Nx,Ny,d02)
       surf(X, Y, abs(Psi));
       view([0,0,1]);
       shading interp; %过渡色彩
       colorbar;
%         plot3D;
%         view([0,0,1]);% 以俯视图视角
%         shading interp; % 过渡色彩
%         colorbar;
       M(j)=getframe;
    end
     movie(M,10);
     t=toc
end