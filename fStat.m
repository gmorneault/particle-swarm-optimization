function [fMean, fStdDev, fMin, fMax] = fStat (f)

f = min(f);
%f = reshape(f,1,[]);
fMean = mean(f);
fStdDev = std(f);
fMin = min(f);
fMax = max(f);