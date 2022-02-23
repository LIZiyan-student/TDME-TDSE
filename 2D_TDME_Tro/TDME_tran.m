function A0_af=TDME_tran(Nx,Ny,A0,d,dt)
    %A0 = Dz0+Hx0+Hy0;
A0_af=A0 ;
for col=1:1:Ny+1
      A0_af(:,col)=TDME_EXP_H1x(Nx,d,dt)*A0_af(:,col);
%     int_af1=int_af1+inter1;
end

for col=1:1:Ny+1
    A0_af(:,col)=TDME_EXP_H2x(Nx,d,dt)*A0_af(:,col);
% int_af2=int;
% inter2=int;

for row=1:1:Nx+1
      A0_af(row,:)=(TDME_EXP_H1y(Ny,d,dt)*(A0_af(row,:)).').';
%     int_af2=int_af2+inter2;
end

for row=1:1:Nx+1
    A0_af(row,:)=(TDME_EXP_H2y(Ny,d,dt)*(A0_af(row,:)).').';
end   
%  H1x,H2x,H1y,H2y分开作用
% A0_af = A0_af+A1;
%Dz0_af = zeros(Nx+1,Ny+1);  %创建一个Nx行Ny列的二维矩阵,初始化为0
%for i = 1 : 2 : Nx+1
 %       for j = 1 : 2 : Ny+1 
 %           Dz0_af(i,j)= A0(i,j);
 %       end
%end
% int_af=int_af1+int_af2;
% X = 0 : 1 : Nx-1;%总共Nx个点
% Y = 0 : 1 : Ny-1;%总共Ny给点
% surf(X, Y, real(int));
% view([0,0,1]);
% shading interp; %过度色彩
end