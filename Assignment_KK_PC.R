vecz=1:200 #vector z created

mean(vecz) #mean of vecz

sd(vecz) #standard deviation of vecz
print(summary(vecz))

zlog = vecz > 30 # Display the logical vector
print(zlog)

zdf <- data.frame(vecz, zlog)  # Display the dataframe
zdf

colnames(zdf) <- c("zvec", "zlogic") # Display dataframe with updated column names
zdf

zdf$zsquared <- zdf$zvec^2 # Display dataframe with new column
zdf

subset_zdf <- subset(zdf, zsquared > 10 & zsquared < 100) # Display the subsetted dataframe
subset_zdf

row_26 <- zdf[26, ] # Display row 26
row_26

row_180_zsquared <- zdf$zsquared[180] # Display the zsquared value from row 180
row_180_zsquared