% Input signal: rectangular pulse
x = [1 1 1 1 1];
% Impulse response: 3-point averager
h = [1 1 1];

y = conv(x, h);

disp('Output y[n] =');
disp(y);

n_y = 0:length(y)-1;
stem(n_y, y, 'filled');
title('Convolution Output');
xlabel('n'); ylabel('y[n]');
grid on;
