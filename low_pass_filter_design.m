% Design FIR low-pass filter
Fs = 1000;     % Sampling frequency
Fc = 100;      % Cutoff frequency
N = 50;        % Filter order

b = fir1(N, Fc/(Fs/2));   % FIR filter design
freqz(b, 1);              % Frequency response plot
title('FIR Low-Pass Filter Response');
