x = (-17.5:0.1:2.5);
y = (-17.5:0.1:2.5);

for n = 1:numel(x)
    for m = 1:numel(y)
        p = [x(n) y(m)];
        z(n,m) = F(p);
    end
end

contour(x, y, z, 40);
figure
surf(x,y,z);