% Task 3 - B

% 19ucs005 - Prasanna Mishra
a=imread('fig1.png');
b=imread('fig2.jpg');
c=histeq(a);
d=histeq(b);
imshowpair(a,c,'montage');
title('Enhancement using histogram equilizer 19ucs005 - Prasanna Mishra');
figure;
imshowpair(b,d,'montage');
title('Enhancement using histogram equilizer 19ucs005 - Prasanna Mishra');