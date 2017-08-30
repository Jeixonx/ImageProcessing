clear all; close all; clc
a=imread('nal.jpg');
b=imread('kratos.jpg');
%a1=rgb2gray(a);
%v1=rgb2gray(b);
[x1,y1,z1]=size(a); %saca filas, columnas y capas de la imaben
[x2,y2,z2]=size(b);
%b2=imresize(b,[x1,y1]);
%c=(a/2)+(b/2); %sumar medios es diferente que la media total
%figure(1);
%imshow([a,b2,c]);
%impixelinfo;
%imwrite(c,'photoshopisdeadcolor.jpg');
% figure(2);
b3=imresize(b,[x1,y1]);
%preparar el video
vidObj=VideoWriter('camtasiaIsDead.avi');
open(vidObj);
for i = 0:0.005:1
    c=a*i + b3(1-i);
    figure(2); imshow(c);
    currFrame = getFrame;
    writeVideo(videoObj,currFrame);
    pause(0.001);
end
for i=1:-0.005:0
    c=a*1+b3*(1-i);
    figure(2); imshow(c);
    currFrame = getFrame;
    writeVideo(videoObj,currFrame);
    pause(0.001);
end
close(videoObj);
