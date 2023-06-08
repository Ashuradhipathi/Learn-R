#Charts and Graphs
#Pie Chart and 3D pie chart
# Bar Chart
# Box plot
# Histogram
# Line graph and multiple line graph
# Scatter plot

# Introduction
# Charts are used to generate visual representation of given data set 
# pie(arguments)
# pie(part,labels,edges,radius,clockwise,init.angle,density)
# part:vector of non-negative numeric values and tells the size of parts 
# labels:assign names to each part
# edges: used to change the outer circle of the pie; default value:200
#radius: used to set the radius; value is between -1 and 1; 
# init.angle: to specify initial angle in degrees, the default value is 0
# 
# using R pie chart demonstrate the percentage conveyance of various ways for travelling to office such as walking,bus,cycle and train
lbls=c("walking","bus","cycle","train")
pie(x=c(15,47,13,28),labels=lbls,radius=0.8,clockwise=FALSE,init.angle= 90,col=c("red","black","green","blue"))
legend("topright",fill=c("red","black","green","blue"),lbls)
 # legend(position.labels.fill)
# position states position of legend


# Using a chart legend show percentage conveyance of various ways for travelling to office such a swalking , car , bus, cycle, train,.
# 1 walking is assigned to red color, train is white color, car - blue color, bus- yellow car, cycle-green color but these values are assigned through cols nad lbls and the legend function
# 2 To fill parameter is used to assign colors to legend
# 3 Legend is added to top right side of the chart by assigning
#install.packages("plotrix")
#library("pltrix")
# 3D pie chart
library("plotrix")
pie3D(x=c(15,47,13,28),labels=lbls,radius=0.8,col=c("red","black","green","blue"))


#Bar plot
# barplot(part,names.arg,xlab,ylab,main,col)
barplot(c(15,47,13,28),names.arg=lbls,xlab="Vehicles",ylab="Number of persons",main="Mode of Transportation",col=c("red","black","green","blue"))
