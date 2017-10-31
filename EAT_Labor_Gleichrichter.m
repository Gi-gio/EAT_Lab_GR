%% Aufgabe 6.2
clear; clc; close all

Udc = 0.37;

R1 = Udc/Idc

%% Aufgabe 6.3.2
clear; clc; close all

Iout_mean = 6.6; %[A]
RL = [1:9];
L = 2*27e-3;

alpha_R = [0, 22.5, 30, 39.4, 42.75, 47.25, 51.75, 56.25, 58.5]; %[°]
Uout_mean_R = [167, 151, 131, 110, 93, 75, 58, 51, 45]; %[V]

alpha_RL = [11.25, 18, 22.5, 33.75, 40.5, 42.75, 45, 47.25, 49.5];
Uout_mean_RL = [146, 134, 115, 96, 77, 58, 48, 40, 30];

hold on
%plot(RL, Uout_mean_R);
%plot(RL, alpha_R);
plot(alpha_RL, Uout_mean_R);
grid on

%plot(RL, Uout_mean_RL);
%plot(RL, alpha_RL);
plot(alpha_RL, Uout_mean_RL);
grid on
hold off

%% 6.4.1 3-Phasen ungesteuert
clear; clc; close all;

%Widerstand 27Ohm + 0..27Ohm
R_L = [1:11];

Uout_mean = [268, 267, 267, 267, 266, 265.5, 265.2, 265.1, 263.6, 264.1, 263.9]; %[V]
Iout_mean = [5.1, 5.4, 5.8, 6, 6.5, 7, 7.3, 7.6, 7.9, 8.2, 8.6]; %[A]

Uout_mean_RL = [268.1, 267.9, 267.2, 266.9, 266.2, 265.8, 265.9, 265.7, 265.5, 265.3, 264.8];
Iout_mean_RL = [5, 5.2, 5.8, 6, 6.4, 6.9, 7.2, 7.5, 7.8, 8.2, 8.8];

plot(Iout_mean, Uout_mean, Iout_mean_RL, Uout_mean_RL);
ylim([250 270]);
xlabel("Strom out [A]");
ylabel("Spannung out [V]");
legend("R-Last", "RL-Last");
grid on
grid(gca,'minor')