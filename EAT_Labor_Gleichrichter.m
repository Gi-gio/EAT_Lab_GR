%% Aufgabe 6.2
clear; clc; close all

Udc = 0.37;

R1 = Udc/Idc

%% Aufgabe 6.3.2
clear; clc; close all

Iout_mean = 6.6; %[A] fixer Wert
RL = [1:9]; %[position] nachgestelter Wert
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
grid minor
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
grid minor

%% 6.4.2 3-Phasen gesteuert
clear; clc; close all;

I = 4.8; %konstanter Strom

%eingestellte Werte
alpha_dt = [0, 0.8, 1.0, 1.4, 1.75, 1.95, 2.00, 1.9, 1.9, 1.9, 1.9]; %[ms]

alpha = (alpha_dt/20)*360;     %stellwinkel Stromrichter
R_L = [1:11];   %eingestellter Wert um Strom konstant zu halten

% gemessene Werte


Udc = [250, 230, 225, 220, 210, 190, 180, 170, 160, 150, 145];
PowerFactor = [0.922, 0.850, 0.811, 0.757, 0.701, 0.654, 0.644, 0.613, 0.589, 0.562, 0.540]; %von PM3000 abgelesen. PF = lambda

% Plot
figure(1)
plot(alpha, Udc);

xlabel("Zündwinkel Alpha [°]");
ylabel("Spannung out DC [V]");
grid on
grid minor


figure(2)
plot(alpha, PowerFactor);

xlabel("Zündwinkel Alpha [°]");
ylabel("Lambda []");
grid on
grid minor

%% 6.4.3
clear; clc; close all
ue = 0.5 %[ms], ü Überlapungswinkel

%% 6.4.4
clear; clc; close all

