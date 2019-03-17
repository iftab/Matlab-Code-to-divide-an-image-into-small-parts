
%resize the input image
%img = imresize(I,[500, 375]);
%imshow(I);
w = 165;
h =55;
General_padding(w,h)
I = imread('E:\CNN_Raw_file\RAW_3\Convolution window work1.png');
I = rgb2gray(I);
% initialize a horizontal kernel
kernel = zeros(h, w);
% compute the dimension of resized image
[r,c] = size(I);

k = ceil(h/2);
l = ceil(w/2);
% total number of sub images created
a = (((r-k)+1)-k);
b = (((c-l)+1)-l);
no = a*b;
d = 1;
% convolve the image
for i = k :10:(r - k)+1
     for j = l:10:(c - l)+1
         outfile=strcat('E:\CNN_Raw_file\RAW_3\Convolution window work\convimg\New folder', num2str(d),'.png');
         for m = (i - floor(h/2)) : (i + floor(h/2))
             for n = (j - floor(w/2)) : (j + floor(w/2))
                 % mapping to store subimage
                 kernel((m - (i-k)),(n - (j - l))) = I(m,n);
             end
         end
       kernel = uint8(kernel);
       %kernel = rgb2gray(kernel);
       imwrite(kernel,outfile); 
       d = d+1;
     end
end







 

                 
                

                    