# ailm
R package "ailm" includes data sets used in the book "Foundations of linear modeling at the age of AI", see details in Liu (2025).

# Installation

    #install.packages("devtools")
    library(devtools)
    install_github("xliusufe/ailm")

    # or
    #install.packages("remotes")
    library(remotes)
    remotes::install_github("xliusufe/ailm") 

# Usage

- [x] [ailm-manual.pdf](https://github.com/xliusufe/ailm/blob/main/inst/ailm-manual.pdf) ------------ Details of the usage of the package.

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


    library(Renvlp)
    library(ailm)
    data(ais)
    ais$sex = as.numeric(ais$sex)
    ais$sport = as.numeric(ais$sport)
    y_col = c("rbc", "wbc", "lbm", "bmi")
    x_col = c("sex", "sport", "ht")
    Y = as.matrix(ais[, y_col])
    X = as.matrix(ais[, x_col])
    Y = scale(Y)
    X = scale(X)
    set.seed(123)
    u_hat <- u.env(X, Y)$u.bic
    model <- env(X, Y, u_hat)


# References
Chin, K., DeVries, S., et al. (2006). Genomic and transcriptional aberrations linked to breast cancer pathophysiologies. Cancer cell, 10(6), 529-541.

Liu, X. (2025). Foundations of linear modeling at the age of AI. Higher Education Press (China).





