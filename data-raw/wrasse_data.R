## code to prepare `wrasse_data` dataset goes here

NoVes = read.csv("data-raw/number_of_vessels_for_publishing.csv")
NoVes[is.na(NoVes)] = "-"
NoVes = NoVes[,-6]
names(NoVes) = c("Year", "Derogations issued", "Derogations revoked", "Vessels reporting landings", "Vessels submitting scientific data")
NoVes$'Fishing Season*' = c("-","-","-","-","1 May - 30 Nov","1 May - 30 Nov","1 May - 30 Nov","1 May - 30 Nov")
NoVes = NoVes[,c(1,6,2:5)]

annLan = read.csv("data-raw/annual_rect_lan_for_publishing.csv", colClasses = c("ices_rect" = "character"))
names(annLan) = c("Year","Month","ICES Rectangle","Species common name","Derogated status","Weight (t)")
annLan=annLan[annLan$`Species common name`!="Wrasse",]

annRect = read.csv("data-raw/annual_rect_number_for_publishing.csv", colClasses = c("ICES.RECT" = "character"))
names(annRect) = c("Year","Month","ICES rectangle","Species common name","Number")

annSize = read.csv("data-raw/annual_number_size_for_publishing.csv")
names(annSize) = c("Species common name","Year","Month","Undersized returned","Oversized returned","Target size but returned","Target size and retained","Total")
annSize = annSize[,c(2:3,1,4:8)]

wrasse_data = list(NoVes,annLan,annRect,annSize)

usethis::use_data(wrasse_data, overwrite = TRUE)
