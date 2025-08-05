% Script to find the maximum of three numbers 

a = input('Enter the first number: ');
b = input('Enter the second number: ');
c = input('Enter the third number: ');

if (a>=b) & (a>=c)
    max_num = a;
elseif (b>=a) & (b>=c)
    max_num = b;
else 
    max_num = c;
end

disp(['Maximum number of the three is: ', num2str(max_num)]);

