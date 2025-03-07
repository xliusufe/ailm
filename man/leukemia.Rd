\name{leukemia}
\alias{leukemia}
\title{Leukemia Gene Expression Data}
\description{
  The leukemia dataset contains gene expression measurements of 7129 genes collected from a total of 72 leukemia patients. In the full dataset, 47 patients have Acute Lymphocytic Leukemia (ALL) and 25 patients have Acute Myelogenous Leukemia (AML). For practical model training and validation, the data is split into two parts: a training set and a test set. 
}
\usage{
    data(leukemia)
}
\arguments{
    \item{train}{A data frame or matrix containing the training data. Each row corresponds to a sample (with 38 observations), and the first 7129 columns represent gene expression levels, with the last column indicating the class label.}
    \item{test}{A data frame or matrix containing the test data. This set consists of 34 samples with the same structure as the training data.}
}
\details{
    The training set (\code{leukemia.train}) comprises 38 samples, while the test set (\code{leukemia.test}) contains 34 samples. Each dataset includes 7129 gene expression values along with a response variable indicating the leukemia subtype.
}
\source{
    The dataset is included in the \code{SIS} package.
}
\references{
    Fan, J., \& Lv, J. (2008). Sure independence screening for ultrahigh dimensional feature space. \emph{Journal of the Royal Statistical Society: Series B (Statistical Methodology)}, 70(5), 849-911.
}
\examples{
library(rbs)
set.seed(123)
data(leukemia)
y = leukemia$train[, dim(leukemia$train)[2]]
x = as.matrix(leukemia$train[, -dim(leukemia$train)[2]])
model_dcsis = sisdc(y, x, d = 2, ntop = 10)
model_dcsis
}
