% Task 2

clc;
clear all;
close all;

im1 = imread('fig2.jpg');
im2 = imread('fig3.jpg');
im3 = imread('fig4.jpg');

im1_n = imresize(im1,[200,363]);
im2_n = imresize(im2,[200,363]);
im3_n = imresize(im3,[200,363]);

ima = imadd(im2_n,im3_n);
imshow(ima);
for i=1:200
    for j=1:363
        if(ima(i,j,1)>0 && ima(i,j,2)>0 && ima(i,j,3)>0)
            if(ima(i,j,1)+ima(i,j,2)+ima(i,j,3)>230)
                im1_n(i,j,1)=0;
                im1_n(i,j,2)=0;
                im1_n(i,j,3)=0;
            end
        end
    end
end
imshow(im1_n);
imaa = imadd(im1_n,ima);
imshow(imaa);
