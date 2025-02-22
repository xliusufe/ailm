# ailm
R package "ailm" includes data sets used in the book "Foundations of linear modeling at the age of AI".

# Installation

    #install.packages("devtools")
    library(devtools)
    install_github("xliusufe/ailm")

    # or
    #install.packages("remotes")
    library(remotes)
    remotes::install_github("xliusufe/ailm") 

# Usage

- [x] [ailm-manual.pdf](https://github.com/xliusufe/ailm/inst/ailm-manual.pdf) ------------ Details of the usage of the package.

# Example
    library(glmnet)
    library(ailm)
 
    data(breastcancer)
    dna = breastcancer$dna[breastcancer$chrom==21,]
	rna = breastcancer$rna[which(breastcancer$genechr==21),]
	y = dna[1,]
	x = t(rna)
	set.seed(100)
	fit_ridge = cv.glmnet(x,y,alpha = 0)
	coef(fit_ridge, s = "lambda.min")
	fit_lasso = cv.glmnet(x,y,alpha = 1)
	coef(fit_lasso, s = "lambda.min")


# References
Chin, K., DeVries, S., et al. (2006). Genomic and transcriptional aberrations linked to breast cancer pathophysiologies. Cancer cell, 10(6), 529-541.





