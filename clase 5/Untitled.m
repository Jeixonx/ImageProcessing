clear all; close all; clc
a=imread('carro (1).jpg');
a=imresize(a, 0.2); %reducir imagen al 20%
[fil, col, cap]=size(a); 
b=reshape(a,[fil,col*cap]);
figure(1); imshow(a); impixelinfo;
figure(2); imshow(b); impixelinfo;
c=rgb2hsv(a);
d=reshape(c,[fil, col*cap]);
figure(3); imshow(c); impixelinfo;
figure(4); imshow(d); impixelinfo;
