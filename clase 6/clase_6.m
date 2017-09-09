clear all; close all; clc
a=imread('placa_bin.bmp');
[l,n]=bwlabel(a);  areat=[];
figure(1); imagesc(l); colormap(copper); impixelinfo
%figure(2); image(l); impixelinfo
%figure(3); imshow(l); impixelinfo
for i=1:n
    b=a*0;b(l==i)=1;
    area=sum(b(:)); areat=[areat, area];
    if area>1000
        figure(1); imshow(b*255);
        title(['Area= ',num2str(area)]);
        pause
    end
end
% figure(2); plot(areat);
[x,y] = find(placa>0);
f_m=min(x(:)); f_x=max(x(:));
c_m=min(y(:)); c_x=max(y(:));
c= imread('carro (1).jpg'); c=imresize(c,0.2);
d= c(f_m: f_x, c_m:c_x, :);
figure(3); imshow(d);

