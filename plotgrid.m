clear;clc;
grid_number=18;%������
grid_length=10;%���ӿ��
wirewide=1;%�߿��
start_color=4;%�ڼ���ʼ��ɫ
number_color=5;%��ɫ����
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