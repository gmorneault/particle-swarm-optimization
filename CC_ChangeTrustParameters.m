fixedIteration = 0;
numDimension = 2;
resetVelocity = 1;
adjustW = 1;
xMin = -17.5;
xMax = 2.5;
w = 1.4;

%SCENARIO 1 -- c1 = 1 | c2 = 1
scenario = 1;
[f iterations] = swarm (numDimension, fixedIteration, xMin, xMax, w, 1, 1, resetVelocity, adjustW);
[stats(scenario).mean stats(scenario).stdDev stats(scenario).min stats(scenario).max] = fStat(f);
stats(scenario).avgIteration = mean(iterations);

%SCENARIO 2 -- c1 = 1 | c2 = 2
scenario = 2;
[f iterations] = swarm (numDimension, fixedIteration, xMin, xMax, w, 1, 2, resetVelocity, adjustW);
[stats(scenario).mean stats(scenario).stdDev stats(scenario).min stats(scenario).max] = fStat(f);
stats(scenario).avgIteration = mean(iterations);

%SCENARIO 3 -- c1 = 1 | c2 = 3
scenario = 3;
[f iterations] = swarm (numDimension, fixedIteration, xMin, xMax, w, 1, 3, resetVelocity, adjustW);
[stats(scenario).mean stats(scenario).stdDev stats(scenario).min stats(scenario).max] = fStat(f);
stats(scenario).avgIteration = mean(iterations);

%SCENARIO 4 -- c1 = 2 | c2 = 1
scenario = 4;
[f iterations] = swarm (numDimension, fixedIteration, xMin, xMax, w, 2, 1, resetVelocity, adjustW);
[stats(scenario).mean stats(scenario).stdDev stats(scenario).min stats(scenario).max] = fStat(f);
stats(scenario).avgIteration = mean(iterations);

%SCENARIO 5 -- c1 = 2 | c2 = 2
scenario = 5;
[f iterations] = swarm (numDimension, fixedIteration, xMin, xMax, w, 2, 2, resetVelocity, adjustW);
[stats(scenario).mean stats(scenario).stdDev stats(scenario).min stats(scenario).max] = fStat(f);
stats(scenario).avgIteration = mean(iterations);

%SCENARIO 6 -- c1 = 2 | c2 = 3
scenario = 6;
[f iterations] = swarm (numDimension, fixedIteration, xMin, xMax, w, 2, 3, resetVelocity, adjustW);
[stats(scenario).mean stats(scenario).stdDev stats(scenario).min stats(scenario).max] = fStat(f);
stats(scenario).avgIteration = mean(iterations);

%SCENARIO 7 -- c1 = 3 | c2 = 1
scenario = 7;
[f iterations] = swarm (numDimension, fixedIteration, xMin, xMax, w, 3, 1, resetVelocity, adjustW);
[stats(scenario).mean stats(scenario).stdDev stats(scenario).min stats(scenario).max] = fStat(f);
stats(scenario).avgIteration = mean(iterations);

%SCENARIO 8 -- c1 = 3 | c2 = 2
scenario = 8;
[f iterations] = swarm (numDimension, fixedIteration, xMin, xMax, w, 3, 2, resetVelocity, adjustW);
[stats(scenario).mean stats(scenario).stdDev stats(scenario).min stats(scenario).max] = fStat(f);
stats(scenario).avgIteration = mean(iterations);

%SCENARIO 9 -- c1 = 3 | c2 = 3
scenario = 9;
[f iterations] = swarm (numDimension, fixedIteration, xMin, xMax, w, 3, 3, resetVelocity, adjustW);
[stats(scenario).mean stats(scenario).stdDev stats(scenario).min stats(scenario).max] = fStat(f);
stats(scenario).avgIteration = mean(iterations);

stats(1)
stats(2)
stats(3)
stats(4)
stats(5)
stats(6)
stats(7)
stats(8)
stats(9)