library(plot3D)# install package
#library(rgl)
#library("plot3Drgl")# install package
data(airquality) # load data, built in dataset in r
head(airquality) # peak at data
tail(airquality)
#create vectors that will be used at point cooridantes for graph
x <- Oz1 <- airquality$Ozone 
y <- Sol1 <- airquality$Solar.R
z <- Temp1 <- airquality$Temp
# basic three diminesional scatterplot
scatter3D(x,y,z) 

#can modify appearance of plot
# bty changes the type of box
scatter3D(x,y,z, bty="f", main="my 3D plot") # full box
scatter3D(x,y,z, bty="n") # no box
scatter3D(x,y,z, bty="b2") # adding grid lines
scatter3D(x,y,z, bty="g") # my favorite, grey background, white grid lines ( i think its just easy to visualize)

# remove legend
scatter3D(x,y,z, bty="b2",colkey=FALSE)

# change position of legend
scatter3D(x,y,z, bty="b2",
          colkey=list(side=1,length=0.5))


# can change point shape or size using pch (pch=1 is default)
scatter3D(x,y,z, bty="b2", pch=19) # bigger filled in circles
scatter3D(x,y,z, bty="b2", pch=20) # smaller filled in cicrcles
scatter3D(x,y,z, bty="b2", pch=15) # filled in box
scatter3D(x,y,z, bty="b2", pch=17) # filled in triangle
scatter3D(x,y,z, bty="b2", pch=5) # open square
scatter3D(x,y,z, bty="b2", pch=6) # open triangle

#can change the size of points using argument cex
scatter3D(x,y,z, bty="b2", cex =0.5) # super small
scatter3D(x,y,z, bty="b2", cex=5) # super big


#manualy specifying arguments
scatter3D(x,y,z, pch=18, bty="u",colkey = TRUE, col.panel="steelblue", expand=0.5, col.grid="black")
 #to change color of points use argument col=
scatter3D(x,y,z, pch=18,bty="u",colkey=TRUE,col="goldenrod", col.panel="white",col.grid="grey")

# color gradient
scatter3D(x,y,z, bty="u",pch=18, colkey=TRUE, col=ramp.col(c("red","blue")), col.panel="white", col.grid="grey")

# color palettes, creating a plot that will generate gg-plot like colors
scatter3D(x,y,z, bty="b2", pch=18,col=gg2.col(100))

#changing view/direction of graph by assinging values to phi and theta
# go back to orginal graph
scatter3D(x,y,z, bty="b2")
scatter3D(x,y,z, bty="b2", theta=15, phi=20)
scatter3D(x,y,z, bty="b2", theta=10, phi=20)
scatter3D(x,y,z, bty="b2", theta=5, phi=20)
scatter3D(x,y,z, bty="b2", theta=0,phi=20)


scatter3D(x,y,z, bty="b2", theta=20, phi=22)
scatter3D(x,y,z, bty="b2", theta=20, phi=20)
scatter3D(x,y,z, bty="b2", theta=20, phi=10)
scatter3D(x,y,z, bty="b2", theta=20,phi=5)


# adding title, axis labels and tickmarks
scatter3D(x,y,z, bty="b2", main="My 3D Scatter Plot",
          xlab="Ozone",
          ylab="Solar.R",
          zlab="Temperature")
#tick marks
## use the argument ticktype to add tickmarks
## two options, "simple" or "detailed"
scatter3D(x,y,z, bty="b2", main="My 3D Scatter Plot",
          xlab="Ozone",
          ylab="Solar.R",
          zlab="Temperature")

scatter3D(x,y,z,bty="b2", ticktype="detailed")
# if it doesn't run using detailed, try running it first using "simple"
# putting in simple wont produce any ticktypes, its the same as not typing anything in

# can use argument nticks to specify the number of ticks you want to use
scatter3D(x,y,z,bty="b2", ticktype="detailed", nticks=10)


#add text TO EXISTING PLOT!!! THATS WHY IT WONT CHANGE WHEN I SPECIFY PCH AND CEX WHEN ADDING LABELS AND ADD=TRUE!
scatter3D(x,y,z, bty="g",pch=20,cex=0.8)
text3D(x,y,z, pch=10,labels=rownames(airquality), add=TRUE, cex=0.5)



# adding a confidence interval
#use the argument CI with the list function in order to generate the confidence interval (NEED TO WORK ON FIGURING THIS OUT MORE)***
myCI<- list(x=matrix(nrow=length(z),
                    data=rep(0.1,2*length(z))))
head(myCI$x)
scatter3D(x, y, z, phi = 0, bty = "g", col=ramp.col(col=c("yellow","green","blue")), colkey=TRUE,
          pch = 18, CI = myCI)



# ** MAYBE ADD A REGRESSION PLANE BUT IDK HOW TO DO THAT


