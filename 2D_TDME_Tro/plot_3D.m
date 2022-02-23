%3D plot
%mesh(x,y,z,c)
%surf(x,y,z,c)c=color

[X,Y]=meshgrid(0:0.1:18,0:0.1:12);

surf(X,Y,abs(Z))
title('2D_Yee')
xlabel('x-axis'),ylabel('y-axis '),zlabel('z-axis')
grid on

%绘制3D图-网格化
% [xx,yy]=meshgrid(x, y); % xx和yy都是25x25的矩阵
% 
% zz=xx.*exp(-xx.^2-yy.^2); % 计算函数值，zz也是21x21的矩阵
