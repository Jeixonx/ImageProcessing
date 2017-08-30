clear all; close all; clc
a= imread('texto.jpg');
b= rgb2gray(a); b(b<255)=0;
figure(2); imshow(b); impixelinfo
c = b';
figure(2);
imshow(c)
d = sum(c); figure(3); plot(d)
figure(4); imshow(b(4:26,:));
e=b(4:26,:);
f=sum(e);
figure(5); plot(f);
g=e(:,5:67);
figure(6); imshow(g)
figure(7); imshow(a(4:26,5:67,:));
