clc;
clear all;
close all;

A= [2 1 1; 
    1 9 2; 
    1 2 1];

ev=eig(A)
L=chol(A)
