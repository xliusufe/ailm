\name{GTEx_apoe}
\alias{GTEx_apoe}
\title{GTEx data associated with APOE gene}
\description{
    The dataset contains APOE gene and other related genes from 111 subjects.
}
\usage{
    data(GTEx_apoe)
}
\details{
    This dataset contains gene expression profiles and genomic data derived from the Genotype-Tissue Expression (GTEx) project. 
    It is a list with 111 rows and 119 columns, and the last column is the APOE gene, the other 118 columns is the related genes.
}
\source{
    Genotype-Tissue Expression (GTEx) project, available at: \url{https://www.gtexportal.org/home/}
}
\examples{
    library(glmnet)
    data(GTEx_apoe)
    y = GTEx_apoe$APOE
    x = GTEx_apoe[,-1]
    x = matrix(unlist(x), nrow = nrow(x))
    fit_lasso = cv.glmnet(x,y,alpha = 1)
    coef(fit_lasso,s = "lambda.min")
}