%% State calculation for discrete model.

function [x_data] = state(A,B1,B2,u1,u2,N)
x = [0;0;0;0];
x_data = zeros(4,N);
x_data(:,1) = x;

for i = 1:N  
   x_data(:,i+1) = A*x_data(:,i)+B1*u1(i)+B2*u2(i);
end
end