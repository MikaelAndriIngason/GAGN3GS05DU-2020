library(readxl)
readings <- read_excel("C:/Users/mikae/Desktop/Verkefni 4 - gagn/Corona_Virus_Stats.xlsx", 
                                 range = "A2:A17", col_names = FALSE)
infected <- read_excel("C:/Users/mikae/Desktop/Verkefni 4 - gagn/Corona_Virus_Stats.xlsx", 
                       sheet = "Corona_Virus_Stats", range = "B2:B17", 
                       col_names = FALSE)

df <- data.frame(readings, infected)
df$...1 <- as.Date(df$...1)

plot(df$...1, df$...1.1, type = "o", ylab = "Total infected", xlab = "Reading taken")

