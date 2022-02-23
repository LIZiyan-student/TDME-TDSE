(* ::Package:: *)

% \:521d\:59cb\:5316\:9ad8\:65af\:6ce2\:5305
function int=ini_gauss(x0,y0,d02,Nx,Ny)
% x y \:53d8\:91cf
X = 0 : 1 : Nx-1;% \:603b\:5171Nx\:4e2a\:70b9
Y = 0 : 1 : Ny-1;


% \:5747\:503c(25, 25)
int = zeros( Ny, Nx);
for row = 1 : 1 : Ny
    for col = 1 : 1 : Nx
        int(row, col) = (  Y (row)/10 - y0) .* (Y (row)/10-y0) + (X (col)/10 - x0) .* (X (col)/10 - x0);% \:70b9\:4e58\:ff0c\:8bf4\:660e\:662f\:5bf9\:5e94\:76f8\:4e58
    end
end

int = -int/(2*d02);

int = exp (int) / (sqrt(2*pi) * sqrt(d02));
k=100;
p_part = zeros(Ny,Nx);
for row = 1 : 1 : Ny
    for col = 1 : 1 : Nx
        p_part(row, col)=exp(-i*k*(col/10-y0));
    end
end
int=int.*p_part;
% \:663e\:793a\:9ad8\:65af\:66f2\:9762
% surf(X, Y, int);
% view([0,0,1])
% \:53bb\:6389\:56fe\:50cf\:4e0a\:7684\:7f51\:683c\:ff0c\:5373\:4f7f\:4e4b\:5149\:6ed1,\:5bf9\:8272\:5f69\:8fdb\:884c\:63d2\:503c\:5904\:7406\:ff0c\:4f7f\:5176\:5e73\:6ed1\:8fc7\:6e21\:3002
% shading interp 
end

