#Tugas Besar Data Mining 047, 058, 060
#Kilas Eksplorasi Dataset Chocolate Bar Rating dari situs kaggle.com
#Mengeksplore dataset flavors_of_cacao.csv 
lokasi_kerja <- "D:/wd"
setwd(lokasi_kerja)
getwd()
#memasukkan dataset flavors_of_cacao.csv
chocolateData <- read.csv("flavors_of_cacao.csv", sep = ";")
view(chocolateData)
#tahun kapan rating cocoa tertinggi terjadi ?
jawab1=chocolateData[(which.max(chocolateData$Rating)),4]
print(jawab1)
#Berapa nilai rating cocoa terendah ?
jawab2=which.min(chocolateData$Rating)
print(jawab2)
#Company apa saja yang cocoa percentnya lebih dari 0.8?
jawab3=subset(chocolateData,Cocoa.Percent>0.8)
print(jawab3)
#Apa nama bar yang memiliki rating tertinggi ?
jawab4=chocolateData[(which.max(chocolateData$Rating)),2]
print(jawab4)
#Company apa saja yang memiliki lokasi di netherlands?
jawab5=chocolateData[(which(chocolateData$Company.Location=="Netherlands")),2]
print(jawab5)
#plot data jumlah persentase cocoa berdasarkan company 
library(ggplot2)
ggplot(data=chocolateData)+
  geom_bar(mapping = aes(chocolateData$CompanyÂ...Maker.if.known.,
                         fill=as.factor(chocolateData$Cocoa.Percent)))
