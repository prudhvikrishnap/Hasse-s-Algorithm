#HASSE'S ALGORITHM
# Import the required libraries
library(dplyr)
library(ggplot2)
# Set 'a' as the random variable
a <- sample.int(1e+12, 1)
# Set b as the list of values
# First element value is a
b <- list(c(a))
# Initialize i as step size
i=1
# While loop until a=1
while(a!=1){
  i <-i +1
  if(a%%2==0){
    a <- a/2
    b[i]<- c(a)
    
  }
  else{
    a <- (a*3)+1
    b[i] <- a
  }
  
  }
# Unlist b to plot the variables
b <- unlist(b)
# Convert list to tibble as ggplot won't allow list as input
plot <- as_tibble(b) %>% ggplot(aes(x=seq(1,length(b)),y=b)) + 
  geom_line(stat='identity') + 
  geom_point()+ labs(x=" Value ",subtitle =sprintf('Random Value is %s and Step size is %s',b[1],i))+
  theme(axis.title.y = element_blank(),
        axis.text.y = element_blank(),
        axis.ticks.y = element_blank())
# Show the plot
plot
