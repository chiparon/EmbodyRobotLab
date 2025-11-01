% 原点到旋转90°的坐标系
R = rotx(pi/2);

% 旋转后的坐标系平移一点，方便区分
T = trotx(pi/2);

% 绘制参考系
figure; hold on; grid on; axis equal
trplot(eye(4), 'frame','{0}', 'color','k');

% 绘制旋转后的坐标系
trplot(T, 'frame','{1}', 'color','r');

% 点P在旋转坐标系中的坐标
p_local = [2;3;4;1];

% 将点坐标转换到参考系下
p_world = T * p_local;

% 绘制点P
plot3(p_world(1), p_world(2), p_world(3), 'bo', 'MarkerFaceColor','b');
text(p_world(1), p_world(2), p_world(3), '  P', 'Color','b', 'FontSize',10);

% 坐标范围与视角
xlim([-6 6]); ylim([-6 6]); zlim([-6 6]);
xlabel('X'); ylabel('Y'); zlabel('Z');
view(135,30);
