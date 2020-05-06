#Hleður inn cvs og setur það í dataframe
nemendur <- read.csv(file = "C:/Users/mikae/Desktop/Verkefni 2 - gagn/2c_2_data.csv")
df <- data.frame(nemendur)

#Býr til nýjan dálk sem geymir meðaleinkun nemandana
df$medaleink <- (rowSums(df[,2:19]) / 18)

#Býr til nýjan dálk sem geymir hæstu einkanir nemandana
df[, "max_eink"] <- apply(df[,2:19], 1, max)

#Býr til nýjan dálk sem geymir minstu einkanir nemandana
df[, "min_eink"] <- apply(df[,2:19], 1, min)

