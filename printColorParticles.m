function printColorParticles (x)

figure

[numberParticle, numberDimension, numberIteration] = size(x);

for n = 1:numberIteration
        p1x(n) = x(1,1,n);
        p1y(n) = x(1,2,n);
        p2x(n) = x(2,1,n);
        p2y(n) = x(2,2,n);
        p3x(n) = x(3,1,n);
        p3y(n) = x(3,2,n);
        p4x(n) = x(4,1,n);
        p4y(n) = x(4,2,n);
end

scatter(p1x,p1y,'filled','MarkerFaceColor','red','MarkerEdgeColor','black');
hold on
scatter(p2x,p2y,'filled','MarkerFaceColor','blue','MarkerEdgeColor','black');
hold on
scatter(p3x,p3y,'filled','MarkerFaceColor','green','MarkerEdgeColor','black');
hold on
scatter(p4x,p4y,'filled','MarkerFaceColor','magenta','MarkerEdgeColor','black');