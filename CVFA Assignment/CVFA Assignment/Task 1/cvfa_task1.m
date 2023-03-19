% Task 1

% 19ucs005 - Prasanna Mishra

clc;
clear all;
close all;

a = imread('fig1.jpg');
imshow(a);
B = a(:,:,1);
C = a(:,:,2);
D = a(:,:,3);
A1 = rgb2gray(a);
subA1 = imsubtract(B,A1);
subA2 = imsubtract(C,A1);
subA3 = imsubtract(D,A1);
binimg = imbinarize(subA1);
binimg2 = imbinarize(subA2);
binimg3 = imbinarize(subA3);

stats0 = regionprops(binimg,'BoundingBox');
stats1 = regionprops(binimg,'Centroid');

stats2 = regionprops(binimg2,'BoundingBox');
stats3 = regionprops(binimg2,'Centroid');

stats4 = regionprops(binimg3,'BoundingBox');
stats5 = regionprops(binimg3,'Centroid');

tot = bwconncomp(binimg);
tot2 = bwconncomp(binimg2);
tot3 = bwconncomp(binimg3);

hold on;
for i=1:tot.NumObjects
    rectangle('Position',stats0(i,1).BoundingBox,'EdgeColor','r');
    plot(stats1(i,1).Centroid(1),stats1(i,1).Centroid(2),'ko');
end

for i=1:tot2.NumObjects
    rectangle('Position',stats2(i,1).BoundingBox,'EdgeColor','g');
    plot(stats3(i,1).Centroid(1),stats3(i,1).Centroid(2),'ko');
end

for i=1:tot3.NumObjects
    rectangle('Position',stats4(i,1).BoundingBox,'EdgeColor','b');
    plot(stats5(i,1).Centroid(1),stats5(i,1).Centroid(2),'ko');
end
title('19ucs005 - Prasanna Mishra');
hold off;