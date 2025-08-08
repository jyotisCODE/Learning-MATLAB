% Script to replace all the negatives with zero in a vector 

%original vector
 v = [1,-2, 3, 4, -5, -6];

 v(v<0) = 0;

 disp(v);