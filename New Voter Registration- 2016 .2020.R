
#Dataset (partial data from: https://github.com/fivethirtyeight/data/blob/master/voter-registration/new-voter-registrations.csv)

setwd("//Users/tyra/Documents/UMD Course Content/Analytical Thinking/T-Test")
vreg2020WAS<-read.csv("VREG2020WAS.csv")
str(vreg2020WAS)


##################descriptive statistics ####################

aggregate(x = vreg2020WAS$New.Registered.Voters, by = list(vreg2020WAS$Cond), FUN = mean)
aggregate(x = vreg2020WAS$New.Registered.Voters, by = list(vreg2020WAS$Cond), FUN = sd)


####################### T-test ##############################


# Question: Is there a significant difference in new voter registration between 2016 and 2020?
t.test (vreg2020WAS$New.Registered.Voters ~ vreg2020WAS$Year)
boxplot (vreg2020WAS$New.Registered.Voters ~ vreg2020WAS$Year, xlab = "Year", ylab = "New Voter Registration" , main = "Washington DC Voter Registration" , col=(c("red","light blue")))

# Answer: Yes

  





