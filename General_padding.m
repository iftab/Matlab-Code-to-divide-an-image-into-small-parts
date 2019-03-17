function General_padding(width,height) %#ok<INUSD>
d=1;
filename = strcat('E:\CNN_Raw_file\RAW_3\Convolution window work\img_1.png');
outfile = strcat('E:\CNN_Raw_file\RAW_3\Convolution window work', num2str(d), '.png');

I = imread(filename);
%wid=width;
%hei=height;
%I = rgb2gray(I);
%[h,w] = size(I); 
add_h=(width-10);
pad_w=(height-10);
if(pad_w<add_h)
    add_h=pad_w;
end
if(pad_w>add_h)
    pad_w=add_h;
end


% pad_w = pad_w/2;
rescale_image = padarray(I,[add_h,pad_w],0, 'post');
imwrite(rescale_image, outfile);