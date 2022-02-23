%动态波函数扩散
function move_2D_TDME(t,dt,X,Y,d,x0,y0)%时间与时间间隔
    Nx=Y/d;
    Ny=X/d;
    Z=Initial(Nx,Ny,x0,y0);
    for j=1:t/dt
        %recurrsion of Z itself.
            Z=TDME_tran(Nx,Ny,Z,d,dt);
            plot_3D;
            view([0,0,1]);%以俯视图视角
            shading interp; %过渡色彩
            colorbar;
            M(j)=getframe;
    end
end
