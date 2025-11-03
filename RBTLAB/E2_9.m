%E2.9,CHIPARON,30/10
p = [7;3;1;1];
T = troty(pi/2) * transl(4,-3,7) * trotz(pi/2);
p_ref = T * p    % -> [8; 4; -1; 1]
