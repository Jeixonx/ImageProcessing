clear all, close all, clc
a=imread('figuras.bmp');
[l,n]=bwlabel(a);
figure(1); imagesc(l); colormap(cool); impixelinfo;
