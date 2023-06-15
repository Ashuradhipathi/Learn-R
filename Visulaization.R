#Charts and Graphs
#Pie Chart and 3D pie chart
# Bar Chart
# Box plot
# Histogram
# Line graph and multiple line graph
# Scatter plot


"
# Introduction
 Charts are used to generate visual representation of given data set 
# pie(arguments)
 pie(part,labels,edges,radius,clockwise,init.angle,density)
 part:vector of non-negative numeric values and tells the size of parts 
 labels:assign names to each part
 edges: used to change the outer circle of the pie; default value:200#radius: used to set the radius; value is between -1 and 1; 
 init.angle: to specify initial angle in degrees, the default value is 0# 
 using R pie chart demonstrate the percentage conveyance of various ways for travelling to office such as walking,bus,cycle and train
"

lbls=c("walking","bus","cycle","train")
pie(x=c(15,24,13,28),labels=lbls,radius=0.4,clockwise=FALSE,init.angle= 90,col=c("red","black","green","blue"))
legend("topright",fill=c("red","black","green","blue"),lbls)


"
 legend(position.labels.fill)
 position states position of legend


 Using a chart legend show percentage conveyance of various ways for travelling to office such a swalking , car , bus, cycle, train,.
 1 walking is assigned to red color, train is white color, car - blue color, bus- yellow car, cycle-green color but these values are assigned through cols nad lbls and the legend function
 2 To fill parameter is used to assign colors to legend
 3 Legend is added to top right side of the chart by assigning
install.packages('plotrix')
library('plotrix'')
3D pie chart
"

library("plotrix")
pie3D(x=c(15,47,13,28),labels=lbls,radius=0.6,col=c("red","black","green","blue"))
legend("topright",fill=c("red","black","green","blue"),lbls)

#Bar plot
# barplot(part,names.arg,xlab,ylab,main,col)
barplot(matrix(c(17,47,53,37,27,15),nrow=2),names.arg=c("walking","bus","cycle"),xlab="Vehicles",ylab="Number of persons",main="Mode of Transportation",col=c("red","green"),density=80,width=1)
legend("topright",fill=c("red","green"),c("walking","bus","cycle","train","bike"))

#stack barplot
barplot(c(17,47,53,37,27),names.arg=c("walking","bus","cycle","train","bike"),xlab="Vehicles",ylab="Number of persons",main="Mode of Transportation",col=c("red","black","green","blue","purple"),density=80,width=1)
legend("topright",fill=c("red","black","green","blue","purple"),c("walking","bus","cycle","train","bike"))

"
# Box Plot
 
 The box plot is a method to graphically picture the numerical Information, gathered by p
 
 Syntax
 
 boxplot(arguments)
 
 There are various arguments in boxplot, some of them are as follows: data: contains a list of data to design a box plot
 
 x: data or values to draw the box plot
 
 xlab: label for x-axis
 
The boxplot function is used to create a box chart
 ylab: label for y-axis
 
 main: displays the title for the box plot
 
 ⚫col: used to assign color to the box plot.
 
 notch: used to design a line on each side of the boxes; takes a Boolean value
"
boxplot(speed~.,data=cars,col=c('red','green'))


"
 #Histogram
 that gives us a chance to find and show the hidden recureence of  a set of continuous information.
 hist(arguments)
 x:values to create a histogram; a vector of values for which the histogram is desired
 main:title
 xlab adn ylab: labels of axes
 laebls: used to display values of blocks at top; takes boolean value
 xlim: used to display valkues till  a specifc limit on thex-axis;takes(x1,x2) as arguments
x1,x2 are set of continuous information
"

d<-c(1,2,3,4,4,5,6,7,8,9,9,10,10,8,7,7,7,11,1,1,11,11,11,11,11,11,12,23,12,23,12)
hist(cars$speed,col=c("red"),main="Histogram",labels=TRUE)
hist(d,col=c("green"),main="Histogram",labels=TRUE,add=T)

"
#Line Graph
 show inforation as sequence of data
 plot()
l - line
p - points
h - horizontal lines
"
plot(cars$speed,col=c("purple"),main="Line plot",type='h')
lines(d,col=c("red"),main="Line plot",type='o')
"
 #Scatterplot
 used to show relationship between two variables of given sets of data 
 plot()
l - line
p - points
h - horizontal lines
"

plot(cars$speed,cars$dist,col=c("blue","red"),main="Line plot",type='o',asp=0.1)

"
 #Histogram: graph display of tabulated frequencies shown as bars
 shows what proportion of cases fall inro each category
 differs from bar chart in that it is the area of the bar that denotes teh value, bot the height as in bar charts, not the height as in bar charts, a crucial distinction when the categories are not of uniform width

 #Scatter plot
 Scatter plot is bivariate data plot to see clusters of poinrs, outliers 
 each pair of values is treated as a pair of coordinates and plotted as points in the plane

#Why data visualization
Gain insight into an infiormation space by mapping data onto graphical primitives
Provide qualitative overview

Search for patterns, trends, structure, irregularities, relationships among data

Help find interesting regions and suitable paramaters for further quantitative analysis

Provide viaual proof of computerrepresentaions derived

#Categorization of visualization methods
Pixel oriented visualization techniques
Geometric projection visualization techniques
Icon based visualization techniques
Hierarchial visualization techniques
Visualizing complex data and relations

#Pixel oriented Visualization technique

for each data set of m dimensions , create m windows on the screen, one for each diemnsion.

The m dimension values of a record are mapped to m pixels at the corresponsding positions in the windows
The colors of the pixels reflect the correspondong values


#Laying Out Pixels in Circle segments
To save space amd shopw the connections among multiple dimenesions space filling us often done in a circle segment

#Geometric Projections Visulaoxation Technique
Visualixation of the gemortric trabsformaions and projections of the data

# methods
Direct visualization
Sactterplot and scatterlot methods
Landscapes
Projection pursuit technique: help users find meaningful projection of multidimensional data
Prosection views
Hyperscale
parallel coordinates

#Visualization of data as perspective landscape
The data needs to be transformed into a (possibly artificial) 2D spatial representation which preserves the characteristics of the data

#Parallel Coordinates
n equidistant axes which are parallel to one of the screens axes correspond to the attributes
The axes are scaled to the [minimum,maximum]: range of teh corresponding attrbute
Every data item correspoonds to  a polygonal line which intersects each othe axes at the point which corresponds to the value for the attribute


#Icon-Based Data Visualization techniques
Visualization of the data values as features of icons
Typical Visulaization methods
Chernoff Figures
Stick figures
General techniques
Shape coding:Use shape to represent certain information encoding
Color icons: Use color icons to encode more information
Tile bars: Use small icons to represent the relevant feature vectors in document retrieval

#Chernoff Faces
A way to diplay variables on a two dimensional surfaces , eg., let x be eyebrow slant , y be eye size, z be nose length ,etc.
The figure shows faces produced using 10 chacteristics head eccentricity, eye size, eye spacing , eye eccentricity, pupil size, eyebrow slant, nose size, mouth shape, mouth size and mouth opening): Each assigned one of 10 poossible values generated using Mathematica

#Hierarchial Visualization techniques
Visualization of the data using a herarchial partitioning into subspaces

Methods
Dimensional stacking
worlds-Within-Worlds
Tree-Map
Cone Trees
InfoCube

#Dimensioanl stacking
Partitioning of the n-dimensional attribute space of 2-D subspaces , which are 'stacked' into each other
Partitioning iof the atttribute value ranges into classes. the important attriburtes should be used on the outer levsls.
Adequate for data with ordinal attriburtres of law cardinality
But, difficult to display more than nine dimensions
Important to map dimensions appropriately


#Worlds-Within-Worklds
assign teh ffunction and two most important parameters ro innermost world
Fix all the parametters at constant values draw other(1,2 3,3) dimensional worlds choosing these as teh axes)
software that uses paradigm
N-vision dynmaic : dynamic interaction through data glove and stereo displays, inclusing rotation scaling(inner) and translation(inner/outer)
Auto Visual: Static interaction by means of queries

#Tree map
Screen filling method which uses a  hierarchial partitioning of the screen into regions depedning on the attribute values

The x- and y- dimension of the screen are partitioned alternately according to the attribute va;ues(classes)

#Info Cube
A 3-d visualization technique where hierarchial information is dispalyed as nested semi-transparent cubes
The outermost cubes corrrespond to the top level data , while the subniodes or the lower level data are represented as smaller cubes inside the outermost cubes , and so on.

#Three-d cone trees 
3D cone trees visulaization techniques well for a thousand nodes or so

First build a 2d circel tree that arranges its bnodes in conecnetric circles centered on the root node
cannot avoid overlaps  when projected to 2D

Visualizing Complex Data and Realations
Visualizing non-numerical data: user and social networks
Tag cloud:Visualizing user-genrated tags

the importance of tag is represented by font size/color
Besides text data, there are also methods to visualize relationships usch as viusualizing social networks


"
