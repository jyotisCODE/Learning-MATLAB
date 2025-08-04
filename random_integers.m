% Script to create a vector with 20 random integers from 1 to 100

v = randi([1,100], 1, 20);

disp('Original vecotr: ');
disp(v);

greater_than_50 = v(v>50);
greater_no = length(greater_than_50);

disp('All numbers greater than 50: ');
disp(greater_than_50);
disp('total number of integers greater than 50: ');
disp(greater_no);

even_num = v(mod(v,2) == 0);
num_even = length(even_num);

disp('Even numbers: ');
disp(even_num);
disp('Total even numbers: ');
disp(num_even);
