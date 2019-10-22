library(tidyverse)
library(gapminder)
gapminder 
write_csv(gapminder,"../gapminder.csv")
View(gapminder)
gapminder_sum<-gapminder %>%
  group_by(continent) %>%
  summarize(ave_lifeExp=mean(lifeExp))
write_csv(gapminder_sum,here::here( 'gapminder_sum.csv'))
gapminder_sum %>%
  ggplot(aes(x=continent,y=ave_lifeExp))+geom_point()

data_url<-"http://gattonweb.uky.edu/sheather/book/docs/datasets/GreatestGivers.xls"

#read_csv can directly import URLs but read_excel makes you download it
# doesn't create the new folder manually
download.file(url=data_url,dest=here::here("test",basename(data_url)))
# Recommendation: Use "basename"
file<-basename(data_url)

library(readxl) # This will let you read excel files
# assign the imported data to a tibble
philanthropists<-read_excel(here::here("test",file),trim_ws=TRUE)
head (philanthropists)

#TODO for firas: Find a way to remove leading white space from column 4
data_url <- "Firas-MRI.xlsx"
download.file(dest=here::here("test","Firas-MRI.xlsx"))
mri_file=read_excel(here::here("test","Firas-MRI.xlsx"),trim_ws=TRUE)
mri<- read_excel("./test/Firas-MRI.xlsx",range="A1:L12")
mri<-mri[,-10]
mri<-mri %>%
  pivot_longer(cols=c("Slice 1":"Slice 8"),
               names="slice_no",
               values_to="value")
