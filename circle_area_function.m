% Script for creating a user defined function

function [area, circumference] = circle_area(r)
    
    area = pi*r^2;
    circumference = 2*pi*r;

end

r = input('Enter the radius: ');

[area, circumference] = circle_area(r);

disp('Area: ');
disp(area);
disp('Circumference: ');
disp(circumference);