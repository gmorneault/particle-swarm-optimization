function printThreeDimension (x, f)

figure

[numberParticle, numberDimension, numberIteration] = size(x);

for p = 1:numberParticle
    for n = 1:numberIteration-1
        pX(n) = x(p,1,n);
        pY(n) = x(p,2,n);
        pZ(n) = f(p,n);  
    end
    scatter3(pX,pY,pZ,5,'filled','MarkerFaceColor','blue','MarkerEdgeColor','black');
    hold on
end

hold off