%% Vehicles parameters given and assumed

m = 1750; %Vehicle mass (Kg)
wheelbase = 2.675; %in m
lf = 1.07; % Distance between vehicle CG and front axle (m)
lr = wheelbase-lf;
trackwidth = 1.505; %m
Izz  = 2511; % Kg/m^2
tireradius = 0.316; %m
g = 9.81; %m/s^2
I_tire = 1; % Kg/m^2
I_wheel = 1; % Kg/m^2

%% Assumed parameters
C_alphaf = 8000*0.45; 
C_alphar = 8000*0.45;
