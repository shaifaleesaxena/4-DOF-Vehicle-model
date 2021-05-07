%% State space
% states are e1, e1_dot, e2 & e2_dot
% Inputs - psi_dot_desired and steering i

function [sys] = state_space(Vx)
Vehicle_Params;
A = [0,1,0,0;
    0,-((2*C_alphaf+2*C_alphar)/(m*Vx)),(2*C_alphaf+2*C_alphar)/m,(-2*C_alphaf*lf+2*C_alphar*lr)/(m*Vx);
    0,0,0,1;
    0,-((2*C_alphaf*lf-2*C_alphar*lr)/(Izz*Vx)),(2*C_alphaf*lf-2*C_alphar*lr)/Izz,-((2*C_alphaf*lf*lf+2*C_alphar*lr*lr)/(Izz*Vx))];

B = [0,2*C_alphaf/m,0,2*C_alphaf*lf/Izz;
    0,-((2*C_alphaf*lf-2*C_alphar*lr)/(m*Vx))-Vx,0,-((2*C_alphaf*lf*lf+2*C_alphar*lr*lr)/(Izz*Vx))]';

C = eye(4);
D = zeros(4,2);
sys = ss(A,B,C,D);
end