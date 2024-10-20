data(iris)
data(mtcars)
data(airquality)

filter<-airquality$Month == "5"
month5<-airquality[filter,]
month5

#Sorting or organizing the data by using the function "order"
ordercar<-order(mtcars$hp)
mtcars[ordercar,]

##Into descending order
airdes<-order(-airquality$Temp)
airquality[airdes,]

#Recoding using the function "ifelse"
iris$colors<-ifelse(iris$Species == 'setosa', 'purple', ifelse(iris$Species == 'versicolor', 'blue', ifelse(iris$Species == 'virginica', 'pink', 'NA')))
head(iris)


## dplyr ## : Manipulating and summarizing

# Summarize #
sumair<-summarise(airquality, Mean.Temp = mean(Temp))
sumair


# Manipulate #

#Select
selection1<-select(iris, Sepal.Length, Sepal.Width)
selection1

    ### If we want to hide, then
hide<-select(mtcars, -hp, -wt)
head(hide)

# Filter
filterstu<-filter(students, gender == 'male')
filterstu

   ### Filter with more specifications
filter3<-filter(mtcars, cyl == '6', hp > 105 )
filter3

# Mutate: To create new columns
mutate2<-mutate(mtcars, Gear.Carb = gear * carb)
head(mutate2)

# Arrange : to sort rows by variables in ascending (default) order
arrange1<-arrange(iris, Sepal.Width)
arrange1

   ## Descending order
arrange3<-arrange(mtcars, desc(mpg))
head(arrange3)

# Group_by : groups observations within a data set according to one or more variables
group2<-group_by(students, gender)
group2

   ###Note: The group_by function doesn't change the data itself but instead "flags" the 
   ###data so that subsequent operations can be performed
group5<-group_by(iris, Species)
group.mean<-summarise(group5, Mean_sepal_length = mean(Sepal.Length))
group.mean

# Pipe operator: makes it possible to link several functions together















































