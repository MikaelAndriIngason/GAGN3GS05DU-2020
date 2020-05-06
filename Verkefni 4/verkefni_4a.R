nemendur <- data.frame(
  id = c (1001:1006), 
  nafn = c("Gillian Keene", "Guğmundur Jónsson", "Marla Dröfn Diego", "Konráğ Guğmundsson", "Renate Hertzenslust", "Sigurğur Sívertssen"),
  Edlisfraedi = c(9.4, 7.5, 9.5, 5.0, 6.6, 8.1),
  Efnafraedi = c(8.4, 6.9, 5.5, 9.8, 4.0, 8.8),
  Staerdfraedi = c(9.0, 6.7, 8.5, 5.0, 9.0, 9.7),
  
  utskrift = as.Date(c("2012-05-25", "2013-12-17", "2014-05-15", "2014-05-15", "2014-12-19", "2015-05-27")),
  stringsAsFactors = FALSE
)

nemendur

#Prentar út töflu af öllum nemendunum			
#str(nemendur)
#summary(nemendur)

edit(nemendur)
