% Script for Energy of a Signal
% Define the finite-length sequence

x = [1, 2, 3, 4, 5];

% Compute the energy using the sum of the square of the magnitudes
energy = sum(abs(x).^2);

% Display the result
fprintf('Energy of the sequence is: %f\n', energy);