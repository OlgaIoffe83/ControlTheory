% initialize
clear
% close all
clc

% Define the parameters
f_low = 50; %Hz
z_low = 0.7;
w_low = 2*pi*f_low;

f_res = 200; %Hz
z_res = 0.02;
w_res = f_res*2*pi;

% Simulate
resp = sim("IS_2pulse_sim.slx")

% Plot
figure(1)
subplot(2,1,1)
plot(resp.plant_in)
grid on
hold on
subplot(2,1,2)
plot(resp.plant_out)
grid on
hold on

