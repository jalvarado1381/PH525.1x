#Random variables

dir()
dat <- read.csv("femaleMiceWeights.csv")
dat
dat$Bodyweight
dat$Bodyweight[1:12]
dat$Bodyweight[13:24]
dat[dat$Diet =="hf", ]
dat[dat$Diet =="hf", ]
dat
dat[dat$Diet =="hf", ]- dat[dat$Diet =="chow", ]
dat[dat$Diet =="hf", ]$Bodyweight - dat[dat$Diet =="chow", ]$Bodyweight
mean(dat[dat$Diet =="hf", ]$Bodyweight - dat[dat$Diet =="chow", ]$Bodyweight)
mean(dat[dat$Diet =="hf", ]$Bodyweight) - mean(dat[dat$Diet =="chow", ]$Bodyweight)

dat

mean(dat$Bodyweight[13:24])-mean(dat$Bodyweight[1:12])
s <- split(dat[,2], dat[,1])

s

stripchart(s, vertical=TRUE, col=1:2)
abline(h=sapply(s, mean), col=1:2)

#Working with samples - function sample()

s$hf
s[["hf"]]
highfat <- s$hf ## extracting the hf mice and saving it into highfat vector
sample(highfat, 6) ## Taking a sample of 6 mouses

#Counting and Determining proportions 

sum(highfat>30) #Countig how much hf are over 30

mean(highfat>30) # Determining proportion of how much are over 30

population <- read.csv("femaleControlsPopulation.csv")
length(population[[1]])

#####
#Random variables I
dat <- read.csv("femaleMiceWeights.csv")
dim(dat)
nrow(dat)
ncol(dat)
summary(dat)
sapply(dat, mean)
sapply(dat, class)
str(dat)
summary(dat)
plot(dat)
control <- dat[1:12, 2]
control
treatment <- dat[13:24,2]
treatment
mean(treatment)
mean(control)
diff <- mean(treatment)-mean(control)

#Random variables II
population <- read.csv("femaleControlsPopulation.csv")
str(population)
control <- sample(population[,1],12 )
mean(sample(population[,1],12 ))
mean(sample(population[,1],12 ))
mean(sample(population[,1],12 ))

set.seed(33)
control <- sample(population[,1],12 )
treatment <- sample(population[,1],12)
control
treatment 
mean(treatment) - mean(control)
n <- 10000
null <- vector("numeric", n)
for (i in 1:n){
    control <- sample(population[,1],12)
    treatment <- sample(population[,1],12)
    null[i] <- mean(treatment) - mean(control)
}
mean(null)
mean(null > diff)
mean(null) - diff
sum(null > diff)
sum(null >= diff)
mean(null >= diff)

n <- 100
plot(0,0,xlim=c(-5,5),ylim=c(1,30),type="n")
totals <- vector("numeric",11)
for(i in 1:n){
  control <- sample(population[,1],12)
  treatment <- sample(population[,1],12)
  nulldiff <- mean(treatment) - mean(control)
  j <- pmax(pmin(round(nulldiff)+6,11),1)
  totals[j]<-totals[j]+1
  text(j-6,totals[j],pch=15,round(nulldiff,1))
  ##if(i < 15) scan() ##You can add this line to interactively see values appear
}


