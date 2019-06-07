%画卷积示意图的格子，并在指定区域上色
clear;clc;
grid_number=18;%格子数
grid_length=10;%格子宽度
wirewide=1;%线宽度
start_color=4;%第几格开始上色
number_color=5;%上色格数
a=ones(grid_length*grid_number+wirewide,grid_length*grid_number+wirewide);
a(grid_length*(start_color-1)+wirewide:grid_length*(start_color+number_color-1),...
    grid_length*(start_color-1)+wirewide:grid_length*(start_color+number_color-1))=0.75;
a(1:wirewide,:)=0;
a(:,1:wirewide)=0;
for i=1:grid_number
    a(i*grid_length+1:i*grid_length+wirewide,:)=0;
    a(:,i*grid_length+1:i*grid_length+wirewide)=0;
end
figure;
imshow(a);
