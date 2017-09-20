function [x, v] = particleGen (numParticle, numDimension, xMin, xMax, timeStep)

%Preallocate Size
x = zeros(numParticle, numDimension);
v = zeros(numParticle, numDimension);

%Particle Generation
for p = 1:numParticle
    %Initial Position and Velocity
    for d = 1:numDimension
        x(p,d) = xMin + rand*(xMax - xMin);
        v(p,d) = (xMin + rand*(xMax - xMin))/timeStep;
    end
end