# Ass 40

# 40a
# .25p + 0.75p + 0.75(1-p) + 0.25(1-p) = p + 1-p = 1

# 40b
# E(X) = sum(x*p(x)) = 0*.25p + 1*0.75p + 2*0.75(1-p) + 3*0.25(1-p) =
# 0.75p + 1.5-1.5p + 0.75-0.75p = 2.25-1.5p

# 40c
# sample mean equals (8*0 + 32*1 + 41*2 + 19*3)/100 = 1.71
# 2.25-1.5p = 1.71 --> moment estimator p = .36

# 40d
p <- 0:100/100
# comparing expected frequencies to observed frequencies, squaring differences -->
ss <- (100*0.25*p-8)^2 + (100*0.75*p-32)^2 + (100*0.75*(1-p)-41)^2 + (100*0.25*(1-p)-19)^2
cbind(p,ss)
# you can see from this table that p = 0.44 minimizes least squares

# 40e
log.likelihood <- log( (0.25*p)^8 * (0.75*p)^32 * (0.75*(1-p))^41 * (0.25*(1-p))^19)
cbind(p,log.likelihood)
# maximum achieved at p = 0.40, which is the maximum likelihood estimate. Note that 0.4
# also corresponds to the proportion of the data (40%) with value 0 or 1.

# To conclude, the three methods, method of moments, least squares, ML, all give a different estimate of p!

