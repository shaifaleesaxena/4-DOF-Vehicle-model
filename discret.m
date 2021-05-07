%% Discretization using c2d function.

function [sys_dis,B1,B2,A] = discret(sys,Ts)
sys_dis = c2d(sys,Ts);
B1 = sys_dis.B(:,1);
B2 = sys_dis.B(:,2);
A = sys_dis.A;
end

