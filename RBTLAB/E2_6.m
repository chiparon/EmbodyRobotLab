% 使用 Robotics Toolbox
% 如果未加载请运行：
% addpath(genpath('path_to_robotics_toolbox'));

% 定义原始变换矩阵
F = [0.527 -0.574 0.628 5;
     0.369  0.819 0.439 3;
    -0.766  0.000 0.643 8;
     0      0     0     1];

% 沿自身 y 轴移动10，沿自身 z 轴移动5
T = transl(0,10,5);   % transl(x, y, z)

% 新坐标系位置,**左乘**
F_new = T * F 

% 打印结果
trprint(F_new, 'label', 'F_{new} = ')
