p.max <- 0*1:6                                        # make a vector of 6 zeros (initialization)

for (dice1 in 1:6) {
  for (dice2 in 1:6) {
    for (dice3 in 1:6) {
      for (dice4 in 1:6) {
        max.value <- max(dice1,dice2,dice3,dice4)     # compute maximum of dice1, dice2, dice3, dice4
        min.value <- min(dice1,dice2,dice3,dice4)     # compute minimum of dice1, dice2, dice3, dice4
        Y <- max.value - min.value
        p.max[Y+1] <- p.max[Y+1] + 1                  # increase frequency of that value of Y
      }
    }
  }
}
p.max <- p.max/1296

x <- 0:5                                              # values of Y

mu <- sum(x*p.max)                                    # expected value or mean
var <- sum((x-mu)^2*p.max)                            # variance
var2 <- sum(x^2*p.max) - mu^2                         # alternative formula to compute variance 
sd <- sqrt(var) 

cbind(x,p.max)                                        # show pmf of x
cbind(mu,var,sd)                                      # show mean and variance of x