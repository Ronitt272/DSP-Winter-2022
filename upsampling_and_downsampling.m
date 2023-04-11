clc;
clear all;
close all;

x = 1:3
L = 3; % upsampling rate
M = 2; % downsampling rate

% Upsample and downsample
xUp = upsample(x,L)
xDown = downsample(x,M)