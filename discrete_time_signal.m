% Discrete-time sinusoid
n = 0:20;            % Time index
x = cos(0.2*pi*n);   % Signal

stem(n, x, 'filled');
title('Discrete-Time Cosine Signal');
xlabel('n'); ylabel('x[n]');
grid on;
