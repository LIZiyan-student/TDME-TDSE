%动态画图
function move_2D_TDME(Nx,Ny,t,dt,x0,y0)%时间与时间间隔,framenum为帧数
    %initialization of Z
    tic
    Z = zeros(Nx+1,Ny+1);
%     Hx = zeros(Nx+1,Ny+1);
%     Hy = zeros(Nx+1,Ny+1);
%     for i = 1  : Nx+1
%         for j = 1 : Ny+1 
%             Z(i,j)=sin(5*(j/10-x0-10-0*dt))*exp(-((j/10-x0-10-0*dt)/2.75)^10-((i/10-y0)/2)^2);
%         end
%     end
%     times=t/dt;
%     steps=times/framenum;
%     j=0;
    for j=1:100
        %recurrsion of Z itself.
            Z=Yee_dz(j*dt,dt,Nx,Ny,x0,y0);
            plot_3D;
            view([0,0,1]);%以俯视图视角
            shading interp; %过渡色彩
            colorbar;
            M(j)=getframe;
    end
    movie(M,10);
    t=toc
end