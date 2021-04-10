library(naivebayes)
library(dplyr)
library(caret)
library(psych)
library(ggplot2)
data1 <- read.csv("CEW.csv")
data1
head(data1)
#Frequency identification
xtabs(~Before_Lockdown + After_lockdown,data = data1)
str(data1)

data1$Before_Lockdown <- as.factor(data1$Before_Lockdown)
data1$Before_Lockdown
data1$After_lockdown <- as.factor(data1$After_lockdown)
data1$After_lockdown
#Visualization
pairs.panels(data1[-1])

library(ggplot2)

ggplot(data1) +
 aes(x = Before_Lockdown, fill = After_lockdown) +
 geom_boxplot() +
 scale_fill_hue() +
 theme_minimal()







