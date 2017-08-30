function b = normaliza(a)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
b=double(a);
b=b/max(b(:))*255;
b=uint8(b);
end

