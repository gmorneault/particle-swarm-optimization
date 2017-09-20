fixedIteration = 0;
numDimension = 2;
xMin = -17.5;
xMax = 2.5;
w = 1.4;
c1 = 2;
c2 = 2;

%SCENARIO 1 -- Reset Velocity | Adjust W
scenario = 1;
[f iterations] = swarm (numDimension, fixedIteration, xMin, xMax, w, c1, c2, 1, 1);
[stats(scenario).mean stats(scenario).stdDev stats(scenario).min stats(scenario).max] = fStat(f);
stats(scenario).avgIteration = mean(iterations);

%SCENARIO 2 -- NO Reset Velocity | Adjust W
scenario = 2;
[f iterations] = swarm (numDimension, fixedIteration, xMin, xMax, w, c1, c2, 0, 1);
[stats(scenario).mean stats(scenario).stdDev stats(scenario).min stats(scenario).max] = fStat(f);
stats(scenario).avgIteration = mean(iterations);

%SCENARIO 3 -- Reset Velocity | NO Adjust W
scenario = 3;
[f iterations] = swarm (numDimension, fixedIteration, xMin, xMax, w, c1, c2, 1, 0);
[stats(scenario).mean stats(scenario).stdDev stats(scenario).min stats(scenario).max] = fStat(f);
stats(scenario).avgIteration = mean(iterations);

%SCENARIO 4 -- NO Reset Velocity | NO Adjust W
scenario = 4;
[f iterations] = swarm (numDimension, fixedIteration, xMin, xMax, w, c1, c2, 0, 0);
[stats(scenario).mean stats(scenario).stdDev stats(scenario).min stats(scenario).max] = fStat(f);
stats(scenario).avgIteration = mean(iterations);

stats(4)
stats(2)
stats(3)
stats(1)
