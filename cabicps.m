%% read ground truth image
im  = imread('t1.png');
im2 = imread('t1 1000 5e-6.png')
%% work on illuminance only
if size(im,3)>1
    im = rgb2ycbcr(im);
    im = im(:, :, 1);
end
im = single(im)/255;

subplot(1,3,1);
imshow(im); title('Original');
%% bicubic interpolation
im_l = imresize(im, 1/3, 'bicubic');
im_b = imresize(im_l, 3, 'bicubic');

subplot(1,3,2);
imshow(im_b); title('After Interpolation');

subplot(1,3,3);
imshow(im2); title('After SRCNN');
%% compute PSNR
imdffa = abs(double(im_b) - double(im));
imdffa = imdffa(:);
rmsea = sqrt(mean(imdffa.^2));
psnrbic = 20*log10(1/rmsea);

im2 = single(im2)/255;

imdffb = abs(double(im2) - double(im));
imdffb = imdffb(:);
rmseb = sqrt(mean(imdffb.^2));
psnrcnn = 20*log10(1/rmseb);
