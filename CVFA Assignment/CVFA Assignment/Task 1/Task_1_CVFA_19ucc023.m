% 19ucc023 - Mohit Akhouri
% CVFA Task 1

% clearing the MATLAB variables and list of images
clc;
clear all;
close all;

% Reading the original image fig1.jpg and plotting it
img = imread('fig1.jpg');
figure;
subplot(2,1,1);
imshow(img);
title('Original Image');

% Separating the R,G and B channels from rgb image 
R = img(:,:,1);
G = img(:,:,2);
B = img(:,:,3);
% Converting the rgb image to grayscale image
img_gray = rgb2gray(img);
% Obtaining the R,G and B objects from grayscale image
sub_R = imsubtract(R,img_gray);
sub_G = imsubtract(G,img_gray);
sub_B = imsubtract(B,img_gray);
% Converting the subtracted image to binary image 
binary_R = imbinarize(sub_R);
binary_G = imbinarize(sub_G);
binary_B = imbinarize(sub_B);

% Drawing bounding box and plotting centroid for different shapes
statsR = regionprops(binary_R,'BoundingBox','Centroid');
statsG = regionprops(binary_G,'BoundingBox','Centroid');
statsB = regionprops(binary_B,'BoundingBox','Centroid');

% Total number of red, green and blue objects are as follows
total_R = bwconncomp(binary_R);
total_G = bwconncomp(binary_G);
total_B = bwconncomp(binary_B);

% Plotting the final image with bounding boxes and centroids
subplot(2,1,2);
imshow(img);
hold on;

for i=1:total_R.NumObjects
    rectangle('Position',statsR(i,1).BoundingBox,'EdgeColor','r');
    plot(statsR(i,1).Centroid(1),statsR(i,1).Centroid(2),'ko');
end

for i=1:total_G.NumObjects
    rectangle('Position',statsG(i,1).BoundingBox,'EdgeColor','g');
    plot(statsG(i,1).Centroid(1),statsG(i,1).Centroid(2),'ko');
end

for i=1:total_B.NumObjects
    rectangle('Position',statsB(i,1).BoundingBox,'EdgeColor','b');
    plot(statsB(i,1).Centroid(1),statsB(i,1).Centroid(2),'ko');
end

title('Image with Bounding Boxes and Centroids');
sgtitle('19ucc023 - Mohit Akhouri');
hold off;