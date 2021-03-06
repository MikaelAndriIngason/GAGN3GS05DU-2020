#Hle�ur inn cvs og setur �a� � dataframe
nemendur <- read.csv(file = "C:/Users/mikae/Desktop/Verkefni 2 - gagn/2c_2_data.csv")
df <- data.frame(nemendur)

#B�r til n�jan d�lk sem geymir me�aleinkun nemandana
df$medaleink <- (rowSums(df[,2:19]) / 18)

#B�r til n�jan d�lk sem geymir h�stu einkanir nemandana
df[, "max_eink"] <- apply(df[,2:19], 1, max)

#B�r til n�jan d�lk sem geymir minstu einkanir nemandana
df[, "min_eink"] <- apply(df[,2:19], 1, min)

