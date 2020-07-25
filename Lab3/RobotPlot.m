clear all
clear all
close all
clc
Length_Tunnel = 2;  %Size of Tunnel
MaxS = 2;           %Max Speed
TotalLength = 10;   %Total Length of the circuit
sim('RobotController3');

figure(1)
hold on
plot(D1)
plot(V1)
title('Car 1')

figure(2)
hold on
plot(D2)
plot(V2)
title('Car 2')

figure(3)
hold on
plot(D3)
plot(V3)
title('Car 3')