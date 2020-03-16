---
title: "Class 5: Data Visualization in R"
date: "January 24, 2020"
output: github_document
---
# Class 5
# Data visualization and graphics in R

plot(1:5, col="blue", typ="o")

# 1A. Line plot
#?read.table
baby <- read.table("bimm143_05_rstats/bimm143_05_rstats/weight_chart.txt", header = TRUE)
plot(baby$Age, baby$Weight, typ="o", col="blue", pch=15, cex=1.5, lwd=2, ylim=c(2,10), xlab="Age (months)", ylab="Weight (kg)", main="Baby Weight With Age")

plot(1:5, pch=1:5, cex=1:5, col=1:5)

# 2B. Barplot
mouse <- read.table("bimm143_05_rstats/bimm143_05_rstats/feature_counts.txt",
                    header = TRUE, sep="\t")
#?dotchart
dotchart(mouse$Count, labels = mouse$Feature)

#?barplot
barplot(height = mouse$Count, ylab = "Feature", xlab = "Counts", 
        main = "Number of features in the mouse GRCm38 genome", 
        names.arg = mouse$Feature, las=2)

barplot(height = mouse$Count, horiz = TRUE, xlab = "Counts", 
main = "Number of features in the mouse GRCm38 genome", 
names.arg = mouse$Feature, las=1)

par()$mar

