function Dz0=Dz_int(Nx,Ny,x0,y0)

%parfor
parfor i = 1 : Nx+1
        for j = 1 : Ny+1 
            Dz0(i,j)=sin(5*(j/10-x0))*exp(-((j/10-x0)/2.75)^10-((i/10-y0)/2)^2);
        end
end
end