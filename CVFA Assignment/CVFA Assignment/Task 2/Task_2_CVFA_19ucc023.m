% 19ucc023 - Mohit Akhouri
% CVFA Task 2

% clearing the MATLAB variables and list of images
clc;
clear all;
close all;

% Reading the images
img2 = imread('fig2.jpg'); % Christmas Scene
img3 = imread('fig3.jpg'); % Tom image
img4 = imread('fig4.jpg'); % Jerry image

% Plotting the original images before resizing
figure;
subplot(3,1,1);
imshow(img2);
title('fig2.jpg');
subplot(3,1,2);
imshow(img3);
title('fig3.jpg');
subplot(3,1,3);
imshow(img4);
title('fig4.jpg');
sgtitle('19ucc023 - Mohit Akhouri');

% Resizing the above images
img2_rs = imresize(img2,[256,256]);
img3_rs = imresize(img3,[256,256]);
img4_rs = imresize(img4,[256,256]);

% Plotting the resized images
figure;
subplot(3,1,1);
imshow(img2_rs);
title('Resized fig2.jpg');
subplot(3,1,2);
imshow(img3_rs);
title('Resized fig3.jpg');
subplot(3,1,3);
imshow(img4_rs);
title('Resized fig4.jpg');
sgtitle('19ucc023 - Mohit Akhouri');

% im_add consists of added images img3 and img4
im_add = imadd(img3_rs,img4_rs);
figure;
imshow(im_add);
title('Result after adding fig3 (tom) and fig4 (jerry)');

% Converting the above image to gray and then binarize it
im_add_gray = rgb2gray(im_add);
im_binary = imbinarize(im_add_gray);

% Plotting of Gray and Binarized image 
figure;
imshow(im_add_gray);
title('Gray Image for previous image');
figure;
imshow(im_binary);
title('Binary image after Binarization');

% Complementing the above binary image
im_comp = imcomplement(im_binary);
figure;
imshow(im_comp);
title('Complemented image for the binary image');

% The main algorithm for concatenation of image is as follows

% Separating the R,G and B channels
img2_R = img2_rs(:,:,1);
img2_G = img2_rs(:,:,2);
img2_B = img2_rs(:,:,3);
% Mutliplying the R,G and B channels with complemented image
img2_new_R = immultiply(img2_R,im_comp);
img2_new_G = immultiply(img2_G,im_comp);
img2_new_B = immultiply(img2_B,im_comp);
% Concatenating the above R,G and B channels
img2_new = cat(3,img2_new_R,img2_new_G,img2_new_B);

figure;
imshow(img2_new);
title('Image after concatenating the R,G and B channels');

img_final = imadd(img2_new,im_add);
figure;
imshow(img_final);
title('Final Result obtained');
