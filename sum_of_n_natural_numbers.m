% Script to calculate sum of first n natural numbers using For Loop

n = input('Enter a number: ');

sum = 0;

for i = 1:n
    sum = sum + i;
end

disp(['The sum of first ', num2str(n) , ' natural numbers is ', num2str(sum)])