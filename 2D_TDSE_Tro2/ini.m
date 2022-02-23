% 初始化高斯波包
function int=ini(k,x0,y0,d02,Nx,Ny)
%设置渐变色：figure => 编辑 => 图形属性
%去掉网格,并使之光滑：surf(X, Y, Z); shading interp;
%设置坐标轴宽度：调整linewidth属性对应值
% 公式： p(z) = exp(-(z-u)^2/(2*d^2)/(sqrt(2*pi)*d)
% x y 变量
    X = 0 : 1 : Nx-1;%总共Nx个点
    Y = 0 : 1 : Ny-1;


    % 均值(25, 25)
    int = zeros( Ny, Nx);
    for row = 1 :  Ny
        for col = 1 :  Nx
            int(row, col) = ( Y(row)/10- y0) .* (Y(row)/10-y0) + (X(col)/10 -50- x0) .* (X(col)/10-50- x0);%点乘，说明是对应相乘
        end
    end

    int = -int/(4*d02);
    int = exp(int);
    %k=100;
    p_part = zeros(Ny,Nx);
    
    %赋值parfor实在鸡肋
    for row = 1 : 1 : Ny
        for col = 1 : 1 : Nx
            p_part(row, col)=exp(1i*k*(col/10-50-x0));
        end
    end
    int=int.*p_part;

    A=normal(x0,y0,d02,Nx,Ny);%引入A值
    int=int/A;
    % 显示高斯曲面
    % surf(X, Y, int);
    % view([0,0,1])
    % 去掉图像上的网格，即使之光滑,对色彩进行插值处理，使其平滑过渡。
    % shading interp 
end

