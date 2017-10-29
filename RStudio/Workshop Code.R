#Vectors

c(1,2,3,4,5,6,7,8)
c(5*6,72/8)
c(sqrt(3.14), log(1), exp(1), tan(pi/4), sin(pi/3)) #some basic functions
       
c("Matrix", "Data Frame", "Linear Regression", "ANOVA")
c("1","2","3")
         
c(1,2,3)
c(2017, "2017")
         
1:16
5:1
         
seq(10,15)
seq(7,28,3)
seq(67,53)
seq(67,53,-1)?
         
# use ? to check the function argument and other information
?seg

(1:5)^2
(1:5)^(2:6) # so it's a sequene of bases and then a sequence of powers. it's 1^2 then 2^3 then etc
(1:5)^(1:6)
3^seq(-1,-8,-1)
3^((-1):(-8))
3^(-1:8)
  


x <- 1:5 #put 1:5 to x

x #show what x is

1:5 -> x

y <- seq(13,10, by=-0.5) #we can take the by = out becuase it's the same increment
y

x
y
x*2
x-y

y [7] #this get's the 7th object in the sequence
y [10] #but the lenght of the sequence is 7? what will happen? it will be NA (NA is not available)
y[8]
y[8] <- 14 #assigning the 8th element to the sequence y
y
y[0] #in c# and stuff, sequences start at 0 but in R they start at 1


#vector practice
(log(tan(pi/4)))/(exp(2) +1) #like in materials exp2 means e^2
Vec_1.new <- seq(1:100)
Vec_1.new[seq(2,100,2)]

#Matrix 

M <- matrix(c(1,3,6,2,8,9,4,5,0),ncol =3) #assigning the matrix to M
M

apply(M,1,mean)
apply(M,2,mean)

?apply

#eq1 subsets of a matrix; we can get the specific values of the matrix by using the [] and adding 2 diemensions
M
M[3,1]

#eg1; the examples below will extract a full row or a full column
M[2,]
M[,3]

matrix()
  
#matrix practice

Mat <- matrix(c(17,0.5,3,1.6,2,0.9,6.2,8,10),nrow = 3,ncol = 3, byrow = TRUE)
?matrix

Mat

apply(Mat,1,mean)

Mat[c(1,2),c(1,2)]


#Data Frames

A <- 2:7
B <- A^2
C <- c('These', 'Are','Words','Not','Numbers','Eh')
mydata <- data.frame(First=A, b=B, Char=C)
mydata


# read the .txt file we use read.table()

path.cukoo <- choose.files() #getting the path for where i saved the files

path.cukoo 


?read.table

cukoos <- read.table(path.cukoo, head = TRUE)  #if the data has headers we go with head = TRUE
cukoos

#eg2 read the .csv file

Airplane <- read.csv("airplane.csv",sep = ",", header = TRUE)

#the above doesn't work since the program can't find "airplane.csv"

Airplane <-read.csv(choose.files(), sep = ',', header = TRUE)
Airplane  

#eg3 

Crab <- read.csv("http://www.hofroe.net/stat557/data/crab.txt", header= TRUE, sep = "\t")
head(Crab)

#eg1 extract one column
Airplane$distance #method 1
Airplane[,2] #method 2

#eg2 extract multpile columns
Airplane[,c("ï..paper","distance")] #method 1
Airplane[,c(1:2)] #method 2

names(Airplane)
#use the function nmes() to get the col names of a dataframe

#eg3 extract all the rows where papeer is medium

Airplane[ï..paper == "medium",] #this is erroring because i  have no variables decalred in my global environment called ï..paper, i only have one called airplane

Airplane[paper == "medium   ",] 
# what's with the space? If we check the data there is actually spaces in the execel, even thought they're invisible. but an issue is, how many spaces are there? We can use as.character() to force a vector as a character and thus we can look at the output and copy paste to find the exact amount of spaces

as.character(Airplane$ï..paper) #the $ is the extraction operator ie we're extracting it from the text file we assinged to Airplane

Airplane[Airplane$ï..paper == "medium  ",] 

#list

List1 <- list(X=x, Crab.Data = Crab) #this is the x from the beginning
List1


#Section 2: Basic Graphing Skills

### scatter plot

plot(Weight~Width, Crab,
     main = "Scatter Plot",
     pch = 20,xlab = "X label is width",
     ylab = "Y labe is weight", cex = 0.5)

#plot (y~x) we say plot y against x
## In plot( ) function
# add header -- main
# change the shape of the point -- pch
# change the x-lab -- xlab
# change the y-lab -- ylab

# add line to an existing graph -- abline()
abline(-3944,242.6, col = "red")

### box plot
names(Airplane)
boxplot(distance~ï..paper, data = Airplane)

### histogram (this has numbers on the bottom)
hist(Crab$Width)

### barplot  (this does not have numbers on the bottom)
barplot(Airplane$distance)


## lay out mutiple graphs
par(mfrow=c(2,2)) #creates a new page to displate all the graphs on. make it 2 by 2
plot(Weight~Width,data=Crab)
boxplot(distance~ï..paper,data=Airplane)
hist(Crab$Width)
barplot(Airplane$distance)#highlight all of this and then run it


## adjust margins
par(mfrow=c(2,2))
par(mar=c(1.5,4.5,1.8,1.3)) #we can adjust margins on the top bottom and left and right of the page in order to make it look prettier
plot(Weight~Width,data=Crab)
boxplot(distance~ï..paper,data=Airplane)
hist(Crab$Width)
barplot(Airplane$distance)

## graphing practice
data(iris) #iris is a built in data frame to r
iris

table(iris$species)

par(mfrow = c(2,2))
boxplot(iris$Sepal.Length~iris$Species, main = "Sepal.Length vs Species")
boxplot(iris$Sepal.Width~iris$Species, main = "Sepal.Width vs Species")
boxplot(iris$Petal.Length~iris$Species, main = "Pepal.Length vs Species")
boxplot(iris$Petal.Width~iris$Species, main = "Pepal.Width vs Species")

?boxplot

plot(iris$Petal.Width~iris$Petal.Length, 
     col=as.factor(iris$Species),xlab = "Petal Length", #as.factor() forces it to change the astral effect based on the factor in the parenthesis
     ylab = "Petal Width", main = "Petal Width vs Petal Length")

?plot

table(iris$Species)
names(iris$Sepal.Length)
iris[iris$Species == "virginica",]


