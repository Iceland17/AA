# Package
An R package for splitting data
# Detailed introduction of the package
The function in the package can split a matrix or data frame into two groups based on the condition that the numeric value formed by combining the 14th and 15th characters of the input matrix/data frame's column names is less than 10.
# Note
The column names of the input matrix or data frame must be at least 15 characters long, and the 14th and 15th characters must be numeric; otherwise, the function cannot be used.
# Installation method
Please enter the following code in RStudio:
install.packages(c("usethis","devtools"));
library("usethis");
library("devtools");
devtools::install_github("Iceland17/AA", ref = "master2")
# Example
da<-matrix(sample(1:30,25),nrow=5,ncol=5);
colnames(da)<-paste0("xxxxxxxxxxxxx",c("01y","12y","03y","11y","05y"));
dat<-getTumorNormal(da);
print(dat)
