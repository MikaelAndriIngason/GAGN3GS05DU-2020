
install.packages("dplyr")
library(dplyr)

df <- weigh_loss

#(Li�ur 1) B�r til n�jan d�lk sem geymir heildar�rangur hvers ��ttakanda
df$Loss <- df$Jan - df$Dec

#(Li�ur 2) B�r til n�jan d�lk sem geymir hlutfallst�lu markmi�s ��ttakanda
df$GoalPercentage <- (1 - (df$Dec / df$Jan)) * 100

#(Li�ur 3) S�nir hver ��ttakandi misti mest af �yngd (s�nir nafn, heildar�rangur og pr�sentu)
df %>% filter(Loss == max(Loss)) %>% select(Individuals, Loss, GoalPercentage)

#(Li�ur 4) B�r til n�jan d�lk sem segir ef f�lk gekk vel � september e�a ekki
df$arangurSeptember<-"ekki vel"
df$arangurSeptember[df$Sep < df$Aug] <- "gekk vel"

#(Li�ur 5) Mutate falli� b�tir vi� n�rri breytu "success_rate"
df$success_rate <- df %>%
  mutate(srate = round((Loss / Goal) * 100), 1) %>% 
  select(srate)

#Vistar s��an datasetti�
save(df, file = "3b_weight_loss_extended.Rda")
