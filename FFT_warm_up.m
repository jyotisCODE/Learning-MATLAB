% Script for FFT

% Sampling parameters
Fs = 4000;               % Sampling Frequency (Hz)
T = 1/Fs;                % Sampling Period (s)
L = 1024;                % Number of samples
t = (0:L-1)*T;           % Time vector (0 to duration)

% Two-tone signal: 100 Hz and 300 Hz
x = sin(2*pi*100*t) + sin(2*pi*300*t);

% Apply FFT
X = fft(x);

% Compute frequency vector
f = Fs*(0:(L/2))/L;      % Frequency axis up to Nyquist (Fs/2)

% Compute magnitude spectrum (only first half due to symmetry)
P = abs(X/L);           
P1 = P(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);  % Multiply by 2 for one-sided spectrum

% Frequency resolution
freq_resolution = Fs / L;

% Plot the magnitude spectrum
figure;
plot(f, P1);
title('Magnitude Spectrum of Two-Tone Signal');
xlabel('Frequency (Hz)');
ylabel('|Magnitude|');
grid on;

% Mark peaks at 100 Hz and 300 Hz
hold on;
[~, locs] = findpeaks(P1, 'MinPeakHeight', 0.3); % adjust threshold if needed
plot(f(locs), P1(locs), 'ro');
text(f(locs)+10, P1(locs), string(round(f(locs))) + " Hz", 'Color', 'red');
hold off;

% Display frequency resolution
disp(['Frequency Resolution: ', num2str(freq_resolution), ' Hz']);
