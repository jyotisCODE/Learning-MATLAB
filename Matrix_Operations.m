% Script for Matrix Operations

A = [1 2 3; 1 2 3; 1 2 3];

disp('Matrix A: ');
disp(A);

A_transpose = A';

disp('Transpose of A: ');
disp(A_transpose);

A_det = det(A);

disp('Determinant of A: ');
disp(A_det);

A_new = A*5;

disp('A multiplied by 5: ');
disp(A_new);