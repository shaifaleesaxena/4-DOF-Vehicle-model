%% Calculation of X and Y based on inputs and parameters

function [X,Y] = trajectory(u2,x_data,Ts,N,Vx)
%% Initialization of variables for integration
psi_des = 0;
X_temp = 0;
Y_temp = 0;


%% Integration for calculating psi_des from psi_dot_desired
for j = 1:N
    psi_des(j+1) = u2(j)*Ts+psi_des(j);
end

for k = 1:N
    X_temp(k+1) = Vx*(cos(psi_des(k)))*Ts+X_temp(k);
    Y_temp(k+1) = Vx*(sin(psi_des(k)))*Ts+Y_temp(k);
end

% X and Y values
X =X_temp-x_data(1,:).*sin(x_data(3,:)+psi_des);
Y = Y_temp + x_data(1,:).*cos(x_data(3,:)+psi_des);
end
