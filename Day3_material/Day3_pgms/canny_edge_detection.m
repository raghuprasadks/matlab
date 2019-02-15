clc;
clear all; 
close all;

% Name of developer: Shwetha A.
% Name of the company: Think Soft Research & Information Technologies;
% Program Name: canny Edge Detecetion;
% Date: Feb 9, 2019;
% Time: 10:35AM;

I = imread('coins.png');
imshow(I)

BW2 = edge(I,'canny');
figure;
imshow(BW2);