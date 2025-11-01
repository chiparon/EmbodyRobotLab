%chiparon 10/30
clear; clc; close all;

% 1. 定义标准 D–H 参数表

L1 = Link([0     27    0     pi/2 ], 'standard');  % 关节1
L2 = Link([0      6   15     0    ], 'standard');  % 关节2
L3 = Link([pi/4   0    1     pi/2 ], 'standard');  % 关节3
L4 = Link([0     18    0     0    ], 'standard');  % 关节4
L5 = Link([0      0    0     0    ], 'standard');  % 关节5
L6 = Link([0      0    0     0    ], 'standard');  % 关节6


robot = SerialLink([L1 L2 L3 L4 L5 L6], 'name', 'PUMA_2_33');

% 显示 D–H 参数验证
robot.display();

q = [0 0 0 0 0 0];    % 各关节角度初始为0
figure;
robot.plot(q, ...
    'workspace', [-50 50 -50 50 0 60], ...
    'scale', 0.8, ...
    'floorlevel', 0, ...
    'jointcolor', 'r', ...
    'linkcolor', [0 0.5 1], ...
    'basecolor', [0 0 0]);

title('实验 2.33 标准 D–H 建模结果');
xlabel('X'); ylabel('Y'); zlabel('Z'); grid on;
