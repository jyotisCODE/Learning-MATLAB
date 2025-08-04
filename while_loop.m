% Script for sum of random numbers between 0 and 1 
% until it exceeds 10
% using While Loop

total = 0;
count = 0;

while total <= 10
    num = rand();
    total = total + num;
    count = count + 1;
end 

disp(['The total sum exceeds 10 after ', num2str(count), ' iterations']);