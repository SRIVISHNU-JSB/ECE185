clear all
close
clc

% Define the message signal
t = 0:0.01:10;
message = sin(2*pi*2*t);

% Define the carrier signal
fc = 10; % carrier frequency
carrier = sin(2*pi*fc*t);

% Modulate the message signal with the carrier signal
am = (1 + 0.5.*message).*carrier;

% Plot the original message signal, carrier signal, and modulated signal
subplot(3,1,1)
plot(t, message)
title('Message Signal')

subplot(3,1,2)
plot(t, carrier)
title('Carrier Signal')

subplot(3,1,3)
plot(t, am)
title('Amplitude Modulated Signal')
