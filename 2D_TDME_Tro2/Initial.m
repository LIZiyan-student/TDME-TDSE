function A0=Initial(Nx,Ny,x0,y0)
   A0=zeros(Nx+1,Ny+1);
   for i = 1 : 1 : Nx+1
        for j = 1 : 1 : Ny+1 
            A0(i,j)=sin(5*(j/10-x0-10))*exp(-((j/10-x0-10)/2.75)^10-((i/10-y0)/2)^2);
        end
   end
   
     % set H_x = 0
%     for i = 2:2:Nx+1
%         for j = 1:2:Ny+1
%             A0(i,j) =;
%         end
%     end
%       % set H-y negative, hence z \ctime -y = x
%     for i = 1:2:Nx+1
%         for j = 2:2:Ny+1
%             A0(i,j) =-A0(i,j);
%         end
%     end
end