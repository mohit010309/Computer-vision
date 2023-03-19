% Task 2

% 19ucs005 - Prasanna Mishra

clc;
clear all;
close all;

in_img1 = imread("fig2.JPG");
img_resize1 = imresize(in_img1,[256,256]);

in_img2 = imread('fig3.JPG');
img_resize2 = imresize(in_img2,[256,256]);

in_img3 = imread('fig4.JPG');
img_resize3 = imresize(in_img3,[256,256]);

imgs_add = imadd(img_resize2,img_resize3);
figure();
imshow(imgs_add);
title('19ucs005 - Prasanna Mishra');

imgs_grey = rgb2gray(imgs_add);
figure();
imshow(imgs_grey);
title('19ucs005 - Prasanna Mishra');

imgs_bw = imbinarize(imgs_grey);
imgs_comp = imcomplement(imgs_bw);
figure();
imshow(imgs_comp);
title('19ucs005 - Prasanna Mishra');

r = img_resize1(:,:,1);
g = img_resize1(:,:,2);
b = img_resize1(:,:,3);
r = immultiply(r,imgs_comp);
g = immultiply(g,imgs_comp);
b = immultiply(b,imgs_comp);

imgs_cat = cat(3,r,g,b);
figure();
imshow(imgs_cat);
title('19ucs005 - Prasanna Mishra');

result = imadd(imgs_add,imgs_cat);
figure();
imshow(result);
title('19ucs005 - Prasanna Mishra');