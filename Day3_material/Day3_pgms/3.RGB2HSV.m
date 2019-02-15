clc;
clear all; 
close all;

% Name of developer: Shwetha A.
% Name of the company: Think Soft Research & Information Technologies;
% Program Name:Display of an image;
% Date: Feb 8, 2019;
% Time: 1:40PM;

X=imread('Jellyfish.jpg');
figure;
subplot(221);
imshow(X);

Y = rgb2hsv(X);
subplot(222);
imshow(Y);
