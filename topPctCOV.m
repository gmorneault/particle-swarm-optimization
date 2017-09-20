function [cov] = topPctCOV (x)

pct = 0.2;
[numParticle] = size(x,2);
topPct = floor(pct*numParticle);

%Sort by Distance
x = sort(x);

%Calculate Coefficient of Variation
cov = COV(x(1:topPct));