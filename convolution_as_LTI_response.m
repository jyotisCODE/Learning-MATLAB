% Define input x[n] = rectangular pulse
% For example: pulse from n = 0 to 4
x = [1 1 1 1 1];

% Define impulse response h[n] = {1, 1, 1}
h = [1 1 1];

% Perform convolution
y = conv(x, h);

% Display results
disp('Output y[n] =');
disp(y);

% Check length
fprintf('Length of x[n] = %d\n', length(x));
fprintf('Length of h[n] = %d\n', length(h));
fprintf('Length of y[n] = %d\n', length(y));

% Plot the signals
n_x = 0:length(x)-1;
n_h = 0:length(h)-1;
n_y = 0:length(y)-1;

figure;
subplot(3,1,1);
stem(n_x, x, 'filled');
title('Input x[n] - Rectangular Pulse');
xlabel('n'); ylabel('x[n]');

subplot(3,1,2);
stem(n_h, h, 'filled');
title('Impulse Response h[n] = [1 1 1]');
xlabel('n'); ylabel('h[n]');

subplot(3,1,3);
stem(n_y, y, 'filled');
title('Output y[n] = x[n] * h[n]');
xlabel('n'); ylabel('y[n]');
