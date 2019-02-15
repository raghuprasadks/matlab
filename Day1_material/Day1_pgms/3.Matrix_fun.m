clc;
clear all; 
close all;

% Name of developer: Shwetha A.
% Name of the company: Think Soft Research & Information Technologies;
% Program Name:Matrix Decalration and functions of Matrix;
% Date: Feb 8, 2019;
% Time: 12:30PM;


Z = zeros(2,4)

F = 5*ones(3,3)

R = randn(4,4)

A = [16 3 2 13; 5 10 11 8; 9 6 7 12; 4 15 14 1]

C = A + A'

D = A .*A'

X = A;

X(:,2) = []

P = A/34