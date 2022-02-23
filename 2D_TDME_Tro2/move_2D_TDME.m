%动态波函数扩散
function move_2D_TDME(t,dt,X,Y,d,x0,y0)%时间与时间间隔
    Nx=Y/d;
    Ny=X/d;
    Z=Initial(Nx,Ny,x0,y0);
  %     j=0;
    iterstep = floor(t/dt);
    framenum = 20;  % frame number of the movie
    timestamp = floor(iterstep/framenum);
    l = 0;
% initialization before this!
%======= employ the algorithm
    for k = 1 : iterstep
        Z=TDME_tran(Nx,Ny,Z,d,dt);
        if mod(k,timestamp) == 0
                plot_3D;
                view([0,0,1]);%以俯视图视角
                shading interp; %过渡色彩
                colorbar;
                l = l + 1;
                M(l)=getframe;
        end
    end
    movie(M,10);
end
