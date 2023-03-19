% 19ucc023 - Mohit Akhouri
% CVFA Task 3 - Part A

% clearing the MATLAB variables and list of images
clc;
clear all;
close all;

% Reading figure 1 and applying gamma transformation on it
% Here, gamma value = 0.4
fig1 = imread('fig1.png');
fig1_adjusted = imadjust(fig1,[],[],0.4);

% Reading figure 2 and applying gamma transformation on it
% Here gamma values range from 0 to 0.4 for R,G and B channels
fig2 = imread('fig2.jpg');
fig2_adjusted = imadjust(fig2,[0 0 0;0.4 0.4 0.4],[]);

% Plotting the two figures using imshowpair
% imshowpair shows two pictures side by side for comparing them
figure;
imshowpair(fig1,fig1_adjusted,'montage');
title('Original image and image after gamma correction with \gamma = 0.4');

figure;
imshowpair(fig2,fig2_adjusted,'montage');
title('Original image and image after gamma correction with \gamma = 0 to 0.4 for R,G and B');
