%task 2
clc;
clear all;
close all;

tom     = imread( 'fig3.jpg' );
jerry   = imread( 'fig4.jpg' );
full    = imread( 'fig2.jpg' );

% Resize the image
tom_re      = imresize( tom , [ 100 , 150 ] );
jerry_re    = imresize( jerry , [ 100 , 150 ] );
full_re        = imresize( full , [ 100 , 150 ] );


% Adding the two image tom and jerry 
tom_jerry = imadd( tom_re , jerry_re );

% Adding this added image to background image 
tom_jerry_bin = im2bw( tom_jerry , 0.3 );
tom_jerry_bin_com = imcomplement( tom_jerry_bin );

% final_img = immultiply( full_re , tom_jerry_bin_com ); cannot perform
% directly 

% Multiply with it's each compoenent and then concat it 
full_re_r = full_re( : , : , 1 );
full_re_g = full_re( : , : , 2 );
full_re_b = full_re( : , : , 3 );

% Concat it 
full_r =  immultiply( full_re_r , tom_jerry_bin_com );
full_b =  immultiply( full_re_b , tom_jerry_bin_com );
full_g =  immultiply( full_re_g , tom_jerry_bin_com );

final_img = cat( 3 , full_r , full_g , full_b );

final_added_img = imadd( final_img , tom_jerry );

imshow(  final_added_img);