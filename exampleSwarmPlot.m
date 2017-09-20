numParticle = 50;
numDimension = 2;
numIteration = 50;
xMin = -17.5;
xMax = 2.5;
timeStep = 1;
w = 1.4;
c1 = 2;
c2 = 2;
violatedConstraints = 1;
adjustW = 1;
noParticleHistory = 0;

[x v] = particleGen(numParticle, numDimension, xMin, xMax, timeStep);
[x f] = PSOConvergenceCriterion(numIteration,  x, v, w, c1, c2, xMin, xMax, timeStep, violatedConstraints, adjustW, noParticleHistory);

printThreeDimension(x, f);
printParticles(x);
printColorParticles(x);