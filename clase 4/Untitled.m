clear all, close all, clc
a = imread('lena.jpg');
b = rgb2gray(a);
figure(1); subplot 211; imshow(b)  %211 2 filas, 1 columna, 1 posicion
subplot 212;    
imhist(b);  %histograma
%plot(c);
d=b; d(d<150)=0;
figure(2); imshow(d); impixelinfo;
figure(3); imhist(d);
e=histeq(b)