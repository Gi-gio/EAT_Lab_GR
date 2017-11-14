%% Aufgabe 6.1.2a
clear; clc; close all


theta = [-20 -10 5 10 15 20 30]; %[°]

P = [1070 665 -20 -230 -435 -654 -1050]; %[W]
P1 = [1000 654 -30 -240 -440 -662 -1000]; %[W]
Q = [642 476 349 368 440 512 707]; %[VAr]
Q1 = [136 1 -40 -10 34 98 254]; %[VAr]

subplot(2,2,1);
plot(theta, P)
xlabel("Phasenverschiebung [°]");
ylabel("Leistung [W]");
%legend("R-Last", "RL-Last");
grid on
grid minor


subplot(2,2,2);
plot(theta, P1)
xlabel("Phasenverschiebung [°]");
ylabel("Leistung Grundschwingung [W]");
%legend("R-Last", "RL-Last");
grid on
grid minor


subplot(2,2,3);
plot(theta, Q)
xlabel("Phasenverschiebung [°]");
ylabel("Blindleistung [VAr]");
%legend("R-Last", "RL-Last");
grid on
grid minor


subplot(2,2,4);
plot(theta, Q1)
xlabel("Phasenverschiebung [°]");
ylabel("Blindleistung Grundschwingung [VAr]");
%legend("R-Last", "RL-Last");
grid on
grid minor



% Aufgabe 6.1.2b
clear; clc; %close all

theta = 15; %[°], fix

Udc = [241 250 255 260 267 275 281 286 292 300 310]; %[V]

P = [-431 -446 -455 -466 -500 -508 -513 -519 -530 -528 -516]; %[W]
P1 = [-436 -455 -463 -473 -508 -516 -521 -529 -540 -536 -524]; %[W]
Q = [401 409 430 461 502 556 607 657 722 819 934]; %[VAr]
Q1 = [-118 -48 10 70.3 134 220 283 352 425 520 651]; %[VAr]


figure(2)
subplot(2,2,1);
plot(Udc, P)
xlabel("Udc [V]");
ylabel("Leistung [W]");
%legend("R-Last", "RL-Last");
grid on
grid minor


subplot(2,2,2);
plot(Udc, P1)
xlabel("Udc [V]");
ylabel("Leistung Grundschwingung [W]");
%legend("R-Last", "RL-Last");
grid on
grid minor


subplot(2,2,3);
plot(Udc, Q)
xlabel("Udc [V]");
ylabel("Blindleistung [VAr]");
%legend("R-Last", "RL-Last");
grid on
grid minor


subplot(2,2,4);
plot(Udc, Q1)
xlabel("Udc [V]");
ylabel("Blindleistung Grundschwingung [VAr]");
%legend("R-Last", "RL-Last");
grid on
grid minor