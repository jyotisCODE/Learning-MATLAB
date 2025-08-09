% Script for Mean, Median, and Mode
% Define a sample vector
vector = [10, 20, 30, 20, 10, 50, 60, 10];

% Calculate the mean
mean_value = mean(vector);

% Calculate the median
median_value = median(vector);

% Calculate the mode
mode_value = mode(vector);

% Display the results
fprintf('The vector is: %s\n', mat2str(vector));
fprintf('Mean:   %f\n', mean_value);
fprintf('Median: %f\n', median_value);
fprintf('Mode:   %f\n', mode_value);