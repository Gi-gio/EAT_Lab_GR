%% 6.3
clear; clc; close all

%eingestellt
IL = 9; %[A]
Uerreger = 170; %[V], Erregerspannung DC Maschine (mech Last)
M = 15; %[Nm], drehmoment an der Welle

f = [5:15:50]; %[Hz] Frequenzumrichter Frequenz

%gemessen
n = [135.6 580.2 1033 1480]; %[U/min], Wllen Umdrehungszahl
Ieff = [5.25 6.31 6.47 6.53]; %[A], Statorstrom ASM effektiv
Igr = [4.78 5.55 5.61 5.68]; %[A], Grudnschwingung Statorstrom effektiv
Pin = [86.5 372 650 922].*3; %[W], Eingangsleistung

%gerechnet
nsyn = f*60/2; %polpaare = 2
s = (nsyn - n) ./nsyn; %schlupf
Pwelle = (n /60) *2 *pi .* M; %[W], Wellenleistung P = omega * M
Pv = Pin - Pwelle;

figure(1)
plot(f, Ieff)
xlabel("Frequenz [Hz]");
ylabel("Statorstrom Eff.");
grid on
grid minor

figure(2)
plot(f, Igr)
xlabel("Frequenz [Hz]");
ylabel("Grundschwingung Statorstrom");
grid on
grid minor

figure(3)
plot(f, Pin)
xlabel("Frequenz [Hz]");
ylabel("Leistung ASM IN");
grid on
grid minor

figure(4)
plot(f, s)
xlabel("Frequenz [Hz]");
ylabel("Schlupf ASM");
grid on
grid minor

figure(5)
plot(f, Pv)
xlabel("Frequenz [Hz]");
ylabel("Leistung ASM Verlust");
grid on
grid minor

%% 6.4
clear; clc; close all
