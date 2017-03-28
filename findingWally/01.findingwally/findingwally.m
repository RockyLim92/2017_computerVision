clear all
close all

img = imread('DepartmentStoreW.jpg');
imshow(img);
title('input');

% cropping wally in the original image
height = 50;
width = height;
stx = 151;
sty = 143;
wally = img((sty):(sty+height), (stx):(stx+width), :);
figure, imshow(wally);
imwrite(wally, 'wally_department.jpg');

% now you can find out wally
locx = 1;
locy = 1;
width = size(wally, 2);
height = size(wally, 1);

%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%


% draw your result
output = img;
figure, imshow(output), hold on
plot([locx locx], [locy locy+width], 'b', 'LineWidth', 3);
plot([locx locx+height], [locy locy], 'b', 'LineWidth', 3);
plot([locx+height locx+height], [locy locy+width], 'b', 'LineWidth', 3);
plot([locx locx+height], [locy+width locy+width], 'b', 'LineWidth', 3);
title('output');
