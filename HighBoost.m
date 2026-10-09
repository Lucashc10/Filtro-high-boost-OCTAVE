i = imread('C:\Users\Lucas\Documents\OctaveProjects\Lena.png');

i = rgb2gray(i);
b = i;

[l, c] = size(i);

A = 1.5;

for x = 2:l-1
  for y = 2:c-1

    media = (double(i(x-1,y-1)) + double(i(x-1,y)) + double(i(x-1,y+1)) +
             double(i(x,y-1))   + double(i(x,y))   + double(i(x,y+1)) +
             double(i(x+1,y-1)) + double(i(x+1,y)) + double(i(x+1,y+1))) / 9;

    b(x,y) = A * double(i(x,y)) - media;

  end
end

b(b < 0) = 0;
b(b > 255) = 255;

b = uint8(b);
figure, imshow(i);
figure, imshow(b);



