# 4 DOF Vehicle model
% 4DOF dynamic model that can be used to assess the handling behavior of vehicle. Model is discretized using c2d MATLAB function and then linearized and trajectory on the motion was visualized for a given speed and steering inputs. 
% Assumptions:
1.	Radius R is large so that the same small angle assumptions can be made.
2.	Velocity of the vehicle is constant.
3.	The influence of road bank angle is neglected.

Inputs : steering angle and psi_dot_desired,
States: e1, e1_dot, e2, e2_dot,
e1 : the distance of the c.g. of the vehicle from the center line of the lane
e2 : the orientation error of the vehicle with respect to the road.

Files:

 vehicle_params.m : Vehicle geometric parameters.
 state space.m : State space definition.
 discret.m : Discretisation using c2d function.
 state.m : State calculation
 trajectory.m : Calculation of trajectory (X and Y values)
 main.m : Calling all the function and plotting trajectory in XY frame.
