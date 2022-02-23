
function A=normal(x0,y0,d02,Nx,Ny)
    X = 0 : 1 : Nx-1;
    Y = 0 : 1 : Ny-1;
    int = zeros( Ny, Nx);

    for row = 1 : 1 : Ny
        for col = 1 : 1 : Nx
            int(row, col) = ( Y (row)/10 - y0) .* (Y (row)/10-y0) + (X (col)/10 - x0) .* (X (col)/10 - x0);% \:70b9\:4e58\:ff0c\:8bf4\:660e\:662f\:5bf9\:5e94\:76f8\:4e58
        end
    end
    
    int = -int/(2*d02);
    int = exp(int);
    
    Sum = 0;
    for row = 1 : 1 : Ny
        for col = 1 : 1 : Nx
            Sum = Sum+int(row,col);
        end
    end
    
    A=sqrt(Sum);
end
    
