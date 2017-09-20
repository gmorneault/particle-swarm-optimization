function [x f n] = PSOConvergenceCriterion (maxIteration, x, v, w, c1, c2, xMin, xMax, timeStep, resetVelocity, adjustW, noObjFuncHist)

convergence = 0;
[numParticle numDimension] = size(x);

%Initialize
for p = 1:numParticle
    pI(p,:) = x(p,:);
    fI(p) = F(x(p,:));
end

%Iterations
for n = 1:maxIteration
    %Step 1 - Objective Function
    for p = 1:numParticle
        f(p,n) = F(x(p,:,n));
        if f(p,n) <= fI(p)
            pI(p,:) = x(p,:,n);
        end
    end
    [fG(n), pos] = min(f(:,n));
    pG(1,:) = x(pos,:,n);
    for p = 1:numParticle
        %Update Velocity
        v(p,:,n+1) = w*v(p,:,n) + c1*rand*(pI(p,:)-x(p,:,n)) + c2*rand*(pG(1,:)-x(p,:,n));        
        %Update Position
        x(p,:,n+1) = x(p,:,n) + v(p,:,n+1)*timeStep;
        %Reset Velocity and Position for Violated Particles
        if any(x(p,:,n+1) < xMin) || any(x(p,:,n+1) > xMax) && resetVelocity
            v(p,:,n+1) = c1*rand*(pI(p,:)-x(p,:,n)) + c2*rand*(pG(1,:)-x(p,:,n));
            x(p,:,n+1) = x(p,:,n) + v(p,:,n+1)*timeStep;
        end
    end
    %Adjust W using COV
    if adjustW
        cov = topPctCOV(f);
        if cov <= 1
            w = max(w*0.975, 0.35);
        end
    end
    if n > 1
        pctChange = abs(f(:,n-1)./f(:,n-1) - f(:,n)./f(:,n-1));
        maxChange = max(pctChange);
        if (maxChange < 0.001) || isnan(maxChange)
            convergence = convergence + 1;
        else
            convergence = 0;
        end
        if convergence == 10
            break
        end
    end    
end

if noObjFuncHist
    f = f(:,n);
end