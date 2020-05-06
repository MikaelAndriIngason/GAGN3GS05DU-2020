
install.packages("dplyr")
library(dplyr)

df <- weigh_loss

#(Liður 1) Býr til nýjan dálk sem geymir heildarárangur hvers þáttakanda
df$Loss <- df$Jan - df$Dec

#(Liður 2) Býr til nýjan dálk sem geymir hlutfallstölu markmiðs þáttakanda
df$GoalPercentage <- (1 - (df$Dec / df$Jan)) * 100

#(Liður 3) Sýnir hver þáttakandi misti mest af þyngd (sýnir nafn, heildarárangur og prósentu)
df %>% filter(Loss == max(Loss)) %>% select(Individuals, Loss, GoalPercentage)

#(Liður 4) Býr til nýjan dálk sem segir ef fólk gekk vel í september eða ekki
df$arangurSeptember<-"ekki vel"
df$arangurSeptember[df$Sep < df$Aug] <- "gekk vel"

#(Liður 5) Mutate fallið bætir við nýrri breytu "success_rate"
df$success_rate <- df %>%
  mutate(srate = round((Loss / Goal) * 100), 1) %>% 
  select(srate)

#Vistar síðan datasettið
save(df, file = "3b_weight_loss_extended.Rda")
