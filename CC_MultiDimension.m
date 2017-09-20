fixedIteration = 0;
resetVelocity = 1;
adjustW = 1;
xMin = -17.5;
xMax = 2.5;
w = 1.4;
c1 = 2;
c2 = 2;

%SCENARIO 1 -- Three Dimensions
scenario = 1;
[f iterations] = swarm (3, fixedIteration, xMin, xMax, w, c1, c2, resetVelocity, adjustW);
[stats(scenario).mean stats(scenario).stdDev stats(scenario).min stats(scenario).max] = fStat(f);
stats(scenario).avgIteration = mean(iterations);

%SCENARIO 2 -- Four Dimensions
scenario = 2;
[f iterations] = swarm (4, fixedIteration, xMin, xMax, w, c1, c2, resetVelocity, adjustW);
[stats(scenario).mean stats(scenario).stdDev stats(scenario).min stats(scenario).max] = fStat(f);
stats(scenario).avgIteration = mean(iterations);

%SCENARIO 3 -- Five Dimensions
scenario = 3;
[f iterations] = swarm (5, fixedIteration, xMin, xMax, w, c1, c2, resetVelocity, adjustW);
[stats(scenario).mean stats(scenario).stdDev stats(scenario).min stats(scenario).max] = fStat(f);
stats(scenario).avgIteration = mean(iterations);

%SCENARIO 4 -- Six Dimensions
scenario = 4;
[f iterations] = swarm (6, fixedIteration, xMin, xMax, w, c1, c2, resetVelocity, adjustW);
[stats(scenario).mean stats(scenario).stdDev stats(scenario).min stats(scenario).max] = fStat(f);
stats(scenario).avgIteration = mean(iterations);

stats(1)
stats(2)
stats(3)
stats(4)