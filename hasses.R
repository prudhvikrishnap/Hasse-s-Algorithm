#HASSE'S ALGORITHM

a= sample.int(1e+12, 1)
b= list(c(a))
i=1
while(a!=1){
  if(a%%2==0){
    a <- a/2
    b[i]<- c(a)
    i <- i+1
    
  }
  else{
    a <- (a*3)+1
    b[i] <- a
    i<- i+1
  }
  
  }
b <- unlist(b)
plot <- as_tibble(b) %>% ggplot(aes(x=seq(1,length(b)),y=b)) + 
  geom_line(stat='identity') + 
  geom_point()+ labs(x=" Value ")+
  theme(axis.title.y = element_blank(),
        axis.text.y = element_blank(),
        axis.ticks.y = element_blank())
plot
