% PUMA 562  —  Standard DH model
clear; clc;
% [theta d a alpha]  (degrees)
dh = [  90   0   0   -90;
         45   6  15     0;
          0   0   1   -90;
          0  18   0    90;
        -45   0   0   -90;
          0   0   0     0];

L(1) = Link('revolute','d',dh(1,2),'a',dh(1,3),'alpha',deg2rad(dh(1,4)),'offset',deg2rad(dh(1,1)));
L(2) = Link('revolute','d',dh(2,2),'a',dh(2,3),'alpha',deg2rad(dh(2,4)),'offset',deg2rad(dh(2,1)));
L(3) = Link('revolute','d',dh(3,2),'a',dh(3,3),'alpha',deg2rad(dh(3,4)),'offset',deg2rad(dh(3,1)));
L(4) = Link('revolute','d',dh(4,2),'a',dh(4,3),'alpha',deg2rad(dh(4,4)),'offset',deg2rad(dh(4,1)));
L(5) = Link('revolute','d',dh(5,2),'a',dh(5,3),'alpha',deg2rad(dh(5,4)),'offset',deg2rad(dh(5,1)));
L(6) = Link('revolute','d',dh(6,2),'a',dh(6,3),'alpha',deg2rad(dh(6,4)),'offset',deg2rad(dh(6,1)));

puma = SerialLink(L,'name','PUMA 562');

theta = deg2rad([0 45 0 0 -45 0]);
T06 = puma.fkine(theta);
disp(T06);
