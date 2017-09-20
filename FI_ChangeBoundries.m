fixedIteration = 1;
numDimension = 2;
resetVelocity = 1;
adjustW = 1;
xMax = 2.5;
w = 1.4;
c1 = 2;
c2 = 2;

%SCENARIO 1 -- xMin = -50
scenario = 1;
[f ~] = swarm (numDimension, fixedIteration, -50, xMax, w, c1, c2, resetVelocity, adjustW);
[stats(scenario).mean stats(scenario).stdDev stats(scenario).min stats(scenario).max] = fStat(f);

%SCENARIO 2 -- xMin = -100
scenario = 2;
[f ~] = swarm (numDimension, fixedIteration, -100, xMax, w, c1, c2, resetVelocity, adjustW);
[stats(scenario).mean stats(scenario).stdDev stats(scenario).min stats(scenario).max] = fStat(f);

%SCENARIO 3 -- xMin = -150
scenario = 3;
[f ~] = swarm (numDimension, fixedIteration, -150, xMax, w, c1, c2, resetVelocity, adjustW);
[stats(scenario).mean stats(scenario).stdDev stats(scenario).min stats(scenario).max] = fStat(f);

%SCENARIO 4 -- xMin = -200
scenario = 4;
[f ~] = swarm (numDimension, fixedIteration, -200, xMax, w, c1, c2, resetVelocity, adjustW);
[stats(scenario).mean stats(scenario).stdDev stats(scenario).min stats(scenario).max] = fStat(f);

stats(1)
stats(2)
stats(3)
stats(4)
