close all
clear all
clc
%% 
Ts = 0.005; %Tuned based on discrete and continuous step response
Vx = 20; %mps
time = 20; %motion for 20 sec
N = time/Ts; 
%% Inputs
u1 = ones(N)*10*pi/180; %steering input
u2 = ones(N)*10*pi/180;  %psi_dot_desired

%% State space model
[sys] = state_space(Vx);

[sys_dis,B1,B2,A] = discret(sys,Ts);

%% Trajectory calculation
[x_data] = state(A,B1,B2,u1,u2,N);

[X,Y] = trajectory(u2,x_data,Ts,N,Vx);

%%
figure()
grid on;
plot(X,Y,'LineWidth',2)
title('Trajectory of the vehicle in XY frame')
xlabel('X')
ylabel('Y')
