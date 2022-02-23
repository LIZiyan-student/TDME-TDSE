%3D plot
%mesh(x,y,z,c)
%surf(x,y,z,c)c=color

[X,Y]=meshgrid(0:0.1:102.4,0:0.1:51.2);

% subplot(1,3,1)
% mesh(X,Y,Z); 
% subplot(1,3,2)
% subplot(1,3,3)

surf(X,Y,abs(Psi))
title('2D_Tro')
xlabel('x-axis'),ylabel('y-axis '),zlabel('z-axis')
grid on

%绘制3D图-网格化
% [xx,yy]=meshgrid(x, y); % xx和yy都是25x25的矩阵
% 
% zz=xx.*exp(-xx.^2-yy.^2); % 计算函数值，zz也是21x21的矩阵
