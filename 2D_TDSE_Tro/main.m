%主函数main
%先对列进行处理
%主函数,输出转化之后的int，时间间隔为dt
function int_af=main(Nx,Ny,a,b,c,d,d02,dt,int,We)
% int_af1=int;
% inter1=int;
for col=1:1:Nx
    if col< a || col> b
      int_af(:,col)= EXP_H0y(Ny,We,dt,c,d,0)*EXP_H1y(Ny,0.1,dt)*EXP_H2y(Ny,0.1,dt)*int(:,col);
    else 
      int_af(:,col)= EXP_H0y(Ny,We,dt,c,d,1)*EXP_H1y(Ny,0.1,dt)*EXP_H2y(Ny,0.1,dt)*int(:,col);
    end
%     int_af1=int_af1+inter1;
end
% int_af2=int;
% inter2=int;
for row=1:1:Ny
    if row>c && row<d
      int_af(row,:)=(EXP_H0x(Nx,We,dt,a,b,0)*EXP_H1x(Nx,0.1,dt)*EXP_H2x(Nx,0.1,dt)*(int(row,:)).').';
    else 
      int_af(row,:)=(EXP_H0x(Nx,We,dt,a,b,1)*EXP_H1x(Nx,0.1,dt)*EXP_H2x(Nx,0.1,dt)*(int(row,:)).').';
    end
%     int_af2=int_af2+inter2;
end
% int_af=int_af1+int_af2;
% X = 0 : 1 : Nx-1;%总共Nx个点
% Y = 0 : 1 : Ny-1;%总共Ny给点
% surf(X, Y, real(int));
% view([0,0,1]);
% shading interp; %过度色彩
end

