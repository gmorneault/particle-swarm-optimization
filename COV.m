function [cov] = COV (x)

covx = std(x);
covy = mean(x);
cov = covx/covy;