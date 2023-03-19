% Task 3 - A

% 19ucs005 - Prasanna Mishra

a=imread('fig1.png');
b=imread('fig2.jpg');
c=imadjust(a,[],[],0.5);
d=imadjust(b,[0 0 0;0.35 0.35 0.35],[]);
imshowpair(a,c,"montage");
title('Enhancement using gamma correction 19ucs005 - Prasanna Mishra');
figure;
imshowpair(b,d,"montage");
title('Enhancement using gamma correction 19ucs005 - Prasanna Mishra');
