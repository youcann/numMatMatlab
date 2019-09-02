clc;
clear all;
close all;

A= [1 2 3; 
    2 -4 6; 
    3 -9 -3];

%P ist in L integriert
[L R]=lu(A)


%L wird normal ausgegeben
[L2 R P]=lu(A)


P*L


