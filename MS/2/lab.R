# install package:
install.packages("fitdistrplus")
# import package:
library("fitdistrplus")

# data - vector with data
# x - data for 0x axis
# y - data for 0y axis

# 1.1:
fitdist(data, "norm", "mme")

# 1.2:
fitdist(data, "norm", "mle")

# 2:
# use your creativity :)

# 3:
# you have to plot the estimation of the sample size
# to create graph:
plot(x, y)