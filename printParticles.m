function printParticles (x)

figure

[numberParticle, numberDimension, numberIteration] = size(x);

for p = 1:numberParticle
    for n = 1:numberIteration
        pX(n) = x(p,1,n);
        pY(n) = x(p,2,n);
    end
    scatter(pX,pY,5,'filled','MarkerFaceColor','blue','MarkerEdgeColor','black');
    hold on
end

hold off