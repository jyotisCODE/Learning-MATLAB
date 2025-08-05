% Script fo Signal Processing Basics
% Sine wave with Gaussian Noise 

% Parameters 
Fs = 1000;         % Sampling rate(Hz)
T = 1;             % Duration(s)
f = 50;            % Frequency of sine wave(Hz)
t = 0:1/Fs:T-1/Fs; % Time vector

% Clean signal
clean_sine_wave = sin(2*pi*f*t);

% Noisy signal 
% Add Gaussian Noise (mean = 0, std = 0.5)
noisy_sine_wave = clean_sine_wave + 0.5*randn(size(t));

% Plotting both signals 
figure; 
plot(t, clean_sine_wave, 'b','LineWidth', 1.2); 
hold on;
plot(t, noisy_sine_wave, 'r', 'LineWidth', 1);
title = ('50 Hz sine wave with Gaussian Noise');
xlabel('Time (s)');
ylabel('Amplitude');
legend ('Clean Signal', 'Noisy Signal');
grid on;