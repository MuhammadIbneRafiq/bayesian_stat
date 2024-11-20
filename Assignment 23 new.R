
p.Y <- 0*1:6                    # make a vector of 6 zeros (initialization)

# loop for examining all possibilities
for (dice1 in 1:6) {
  for (dice2 in 1:6) {
    Y <- max(dice1,dice2)      
    p.Y[Y] <- p.Y[Y] + 1
  }
}

p.Y <- p.Y/6^2
# we now finished creating the probability mass function
# we now go over to compute E(x) and variance of the pmf

x <- 1:6                                            # values of maximum

mu <- sum(x*p.Y)                                    # expected value or mean
var <- sum((x-mu)^2*p.Y)                            # variance
var2 <- sum(x^2*p.Y) - mu^2                         # alternative formula to compute variance 

cbind(x,p.Y)                                        # show pmf of x
cbind(mu,var)                                         # show mean and variance of x