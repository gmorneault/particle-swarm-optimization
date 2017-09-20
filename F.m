function [y] = F (x)

n = numel(x);
A = 0;
B = 1;
C1 = 200;

for i = 1:n
    A = A + x(i)^2/C1;
    B = B*cos(x(i)/sqrt(i));
end

y = A - B + 1;
