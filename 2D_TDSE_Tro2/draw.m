function draw(t,dt,x0,y0,Nx,Ny,d02,k)
    int=ini(k,x0,y0,d02,Nx,Ny);%初始波包
            X = 0 : 1 : Nx-1;%总共Nx个点
            Y = 0 : 1 : Ny-1;%总共Ny给点
            surf(X, Y, abs(real(int)));
            view([1,1,1]);
            shading interp; %过渡色彩
            colorbar;
end
        
        