clc
clear all
close all
I=imread('PMC3354356_IJRI-22-4-g008.PNG');
I=imcrop(rgb2gray(I));
I=double(I);
class_number=4;%baraye 2 class -0.2 javabe khobeh
potential=-1;
maxIter=10;
[seg,E2]=ICM(I,class_number,potential,maxIter);
figure;
a=E2;
imshow(I,[]);
figure;imshow(seg,[]);
seg2=label2rgb(seg,'jet',[0.5 0.5 0.5]);
figure;imshow(seg2);
