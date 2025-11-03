% Example 2.11 — 正确顺序：左乘(固定轴) + 右乘(当前轴)
clear; clc; close all;

% 变换按“固定轴左乘、当前轴右乘”累积
T = eye(4);
T = trotx(90) * T;          % 1) 参考x旋转90°
T = T * transl(3,0,0);      % 2) 当前x平移3
T = trotz(90) * T;          % 3) 参考z旋转90°
T = T * transl(5,0,0);      % 4) 当前x平移5

% 作用到点 Bp = [1;5;4;1]
pB  = [1;5;4;1];
pU  = T * pB;

disp('T ='); disp(T);
disp('pU ='); disp(pU(1:3));

% 动画
figure; hold on; grid on; axis equal; view(135,30);
xlabel X; ylabel Y; zlabel Z;
trplot(eye(4),'frame','U','color','b','length',2);

T1 = trotx(90)        * eye(4);
T2 = T1               * transl(3,0,0);
T3 = trotz(90)        * T2;
T4 = T3               * transl(5,0,0);

tranimate(eye(4),T1, 'frame','1','color','r','length',2); pause(0.5);
tranimate(T1,   T2,  'frame','2','color','g','length',2); pause(0.5);
tranimate(T2,   T3,  'frame','3','color','m','length',2); pause(0.5);
tranimate(T3,   T4,  'frame','B','color','k','length',2); pause(0.5);

plot3(pU(1),pU(2),pU(3),'ro','MarkerFaceColor','r'); text(pU(1),pU(2),pU(3),'  p');
xlim([-5 10]); ylim([-5 10]); zlim([0 12]);
title('Ex 2.11 ');
