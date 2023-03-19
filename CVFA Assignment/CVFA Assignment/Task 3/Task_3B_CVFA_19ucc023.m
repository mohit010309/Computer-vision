% 19ucc023 - Mohit Akhouri
% CVFA Task 3 - Part B

% clearing the MATLAB variables and list of images
clc;
clear all;
close all;

% Reading figure 1 and applying histogram equalization on it
% Here, histeq(I,HGRAM) where I is image and HGRAM is length of bins
% Here length of bins = 200
fig1 = imread('fig1.png');
fig1_adjusted = histeq(fig1,200);

% Reading figure 2 and applying histogram equalization on it
% Here, histeq(I,HGRAM) where I is image and HGRAM is length of bins
% Here length of bins = 150
fig2 = imread('fig2.jpg');
fig2_adjusted = histeq(fig2,150);

% Plotting the two figures using imshowpair
% imshowpair shows two pictures side by side for comparing them
figure;
imshowpair(fig1,fig1_adjusted,'montage');
title('Original image and image after Histogram equalization with length of bins = 200');

figure;
imshowpair(fig2,fig2_adjusted,'montage');
title('Original image and image after Histogram equalization with length of bins = 150');
