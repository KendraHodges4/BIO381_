### practice with graphcs
### October 30, 2018
### KLH

library(plot3D) #prelimary
library(plot3Drgl)
data(iris)   # pick a dataset
head(iris)   #print data set
x <- sep.1 <- iris$Sepal.Length        #assign variables
y <- pet.1 <- iris$Petal.Length
z <- sep.w <- iris$Sepal.Width
points3D(x,y,z, phi=0, bty="g")
print(points3D)

# using plot3D to create three dimensional scatter plots

# scatter plots

#change the type of box

# choosing colors

# alter the view of graph

# add axis labels and tick marks

# add text to points

#add confidence interval

#  add regression plane





# plotting text (instead of just points)

# possibly interactive plot (if it can work with a scatterplot instead of a histogram)

library(plot3D)
data(airquality)
head(airquality)
x <- Oz1 <- airquality$Ozone 
y <- Sol1 <- airquality$Solar.R
z <- Temp1 <- airquality$Temp
scatter3D(x,y,z) 

print(scatter3D)

# changing the type of box
# to make a full box
# so far so good.. just need to explain why doing what ( x assigned to Oz1,
# explain what phi and bty is!

points3D(x,y,z, phi=0,bty="g")
print(points3D)
lines3D(x,y,z, bty="g",type="1",
        ticktype="detailed", lwd=4)

print(lines3D)

#this is addinge acis labels and graph title
scatter3D(x,y,z,theta=20, phi=20,
          main="Air Quality Data", xlab="Ozone",
          ylab="Solar.R", zlab="Temperature")

# add tickmarks
scatter3D(x,y,z phi=0, bty="g",pch=20,
          ticktype = "detailed" )

fit <- lm(z~x+y)
grid.lines = 26
x.pred <- seq(min(x), max(x), length.out = grid.lines)
y.pred <- seq(min(y), max(y), length.out = grid.lines)
xy <- expand.grid( x = x.pred, y = y.pred)
z.pred <- matrix(predict(fit, newdata = xy), 
                 nrow = grid.lines, ncol = grid.lines)

fitpoints <- predict(fit)

scatter3D(x, y, z, pch = 18, 
          theta = 20, phi = 20,
          xlab = "ozone", ylab = "solar", zlab = "temp",  
          surf = list(x = x.pred, y = y.pred, z = z.pred,  
                      facets = NA, fit = fitpoints), main = "airquality")
