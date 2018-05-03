#Exploring data frames

#Load in the data
cats <- read.csv(file='data/feline-data.csv')

#Add a col to an existing dataframe
age <- c(2, 3, 5)

#Bind the cats datafrane to the new age vector
cbind(cats, age)

#What if the new column was longer the df?
age <- c(2, 3, 5, 9)
cbind(cats, age)

age <- c(2,3,5)
cats <- cbind(cats, age)

#Add a new row
newRow <- list("Tortoishell", 3.3, TRUE, 9)
cats <- rbind(cats, newRow)

#Factors
levels(cats$coat)
#Add another factor
levels(cats$coat) <- c(levels(cats$coat), 'tortoishell')
#Add the new row again
newRow <- list("tortoishell", 3.3, TRUE, 9)
cats <- rbind(cats, newRow)

#REmove a row...
cats
cats[-4,]

#The row to remove has a NA value
na.omit(cats)
#Overwrite the old cats DF with the new values
cats <- na.omit(cats)

#Fix the rowname indexing
cats
rownames(cats) <- NULL
cats

#Challenge 2
df <- data.frame(first = c("Martin"),
                 last = c("Callaghan"),
                 lucky_number = c(7),
                 stringsAsFactors = FALSE)

df <- rbind(df, list('Peter', 'Jones', 8))

#Gapminder exercise
gapminder <- read.csv("data/gapminder-FiveYearData.csv")

#Challenege 3
tail(gapminder) #6 rows by default
tail(gapminder, n = 9)

#A sample
gapminder[sample(nrow(gapminder), 5), ]

#Challenge 4
source(file="scripts/load-gapminder.R")

#Challenge 5
str(gapminder)













