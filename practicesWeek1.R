dat <- read.csv("femaleControlsPopulation.csv")
summary(dat)
length(dat)

url1="https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/msleep_ggplot2.csv"

download.file( url1, "msleep_ggplot2.csv", "curl")

tab <- read.csv("msleep_ggplot2.csv")
class(tab)
head(tab)

dim(tab)

head(tab$sleep_total)
head(tab[1])
plot(tab$brainwt, tab$sleep_total)
plot(tab$brainwt, tab$sleep_total, log="x")
plot(log10(tab$brainwt), tab$sleep_total)

summary(tab$sleep_total)
mean(tab[tab$sleep_total > 18,]$sleep_total)
which(tab$sleep_total>18)
tab[which(tab$sleep_total > 18 & tab$sleep_rem <3),]
which(tab$sleep_total > 18 & tab$sleep_rem <3)
sort(tab$sleep_total, decreasing = TRUE)
order(tab$sleep_total)

rank(tab$sleep_total)
match(c("Cow","Owl monkey","Cheetah"), tab$name)
tab$name[c(5,2,1)]
tab[c(5,2,1),]

vec = c("red","blue","red","green","green","yellow","orange")

fac <- factor(vec)
fac
levels(fac)
fac =="green"

table(tab$sleep_total)

s<-split(tab$sleep_total, tab$order)
s

s[["Rodentia"]]

mean(s[["Rodentia"]])

lapply(s,mean)

sapply(s, mean)

sapply(s, sd)
lapply(s,sd)$Primate




