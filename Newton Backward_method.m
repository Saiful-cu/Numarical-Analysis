%Newton Backward 
clc
clear
x=[40  50  60  70   80   90];
y=[180 204  226   250  276   304];

p=input('Enter the value of x:');
xn=input('Enter the value of x0:');
h=input('Enter the value of h:');

u=(p-xn)/h;
%Construct the difference table

del_y0=y(2)-y(1);
del_y1=y(3)-y(2);
del_y2=y(4)-y(3);
del_y3=y(5)-y(4);
del_y4=y(6)-y(5);

del_sqr_y0=del_y1-del_y0;
del_sqr_y1=del_y2-del_y1;
del_sqr_y2=del_y3-del_y2;
del_sqr_y3=del_y4-del_y3;

del_cube_y0=del_sqr_y1-del_sqr_y0;
del_cube_y1=del_sqr_y2-del_sqr_y1;
del_cube_y2=del_sqr_y3-del_sqr_y2;

del_four_y0=del_cube_y1-del_cube_y0;
del_four_y1=del_cube_y2-del_cube_y1;

del_five_y0=del_four_y1-del_four_y0;

fx=y(6)+u*del_y3+u*(u+1)*del_sqr_y2/factorial(2)+u*(u+1)*(u+2)*del_cube_y2/factorial(3)+u*(u+1)*(u+2)*(u+3)*del_four_y1/factorial(4)+u*(u+1)*(u+2)*(u+3)*(u+4)*del_five_y0/factorial(5);

fprintf('The value of y is %0.4f',fx);

fprintf('\n');
% n=3
error=((u*(u+1)*(u+2)*(u+3))*delfoury0)/factorial(4);
fprintf('error for forward interpolation %0.4f',abs(error));