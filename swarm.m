function [f iterations] = swarm (numDimension, fixedIteration, xMin, xMax, w, c1, c2, resetVelocity, adjustW)

numSwarm = 50;
noObjFuncHist = 1;
numParticle = 300;
numIteration = 50;
maxIteration = 300;
timeStep = 1;

for n = 1:numSwarm
    [x, v] = particleGen(numParticle, numDimension, xMin, xMax, timeStep);
    if fixedIteration
        [~, f(:,n)] = PSOFixedIteration(numIteration,  x, v, w, c1, c2, xMin, xMax, timeStep, resetVelocity, adjustW, noObjFuncHist);
        iterations = numIteration;
    else
        [~, f(:,n) iterations(n)] = PSOConvergenceCriterion(maxIteration,  x, v, w, c1, c2, xMin, xMax, timeStep, resetVelocity, adjustW, noObjFuncHist);
    end
end
