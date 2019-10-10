jet=load('jet0-255.txt');
I=imread('hengcaijiancl.png');%jetͼƬ
imshow(I);
figure
[x,y,d]=size(I);
I=I./4*4;
gray=[];
for i=1:x
    for j=1:y
        if I(i,j,1)<=16 & I(i,j,2)<=16
            gray(i,j)=I(i,j,3)/4-33;%1-32
        elseif  I(i,j,1)<=16 & I(i,j,3)>=240
            gray(i,j)=I(i,j,2)/4+31;%33-96
        elseif  I(i,j,2)>=240 & I(i,j,1)+I(i,j,3)>=240
            gray(i,j)=I(i,j,1)/4+95;%97-160
        elseif  I(i,j,1)>=240 & I(i,j,3)<=16
            gray(i,j)=223-I(i,j,2)/4;%161-224
        elseif  I(i,j,2)<=16 & I(i,j,3)<=16
            gray(i,j)=287-I(i,j,2)/4;%225-256
        end
    end
end
gray=double(255-gray);
surf(flipdim(gray,1));
colormap jet
shading interp
axis off
grid off
