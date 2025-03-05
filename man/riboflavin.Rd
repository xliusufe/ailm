\name{riboflavin}
\alias{riboflavin}
\title{Riboflavin data set}
\description{
    The dataset of riboflavin production by Bacillus subtilis contains 71 observations of 4088
    predictors (gene expressions) and a one-dimensional response (riboflavin production).
}
\usage{
    data(riboflavin)
}
\arguments{
\item{y}{Log-transformed riboflavin production rate.}

\item{x}{variables measuring the logarithm of the expression level of 4088 genes.}

}
\details{
    This dataset was made publicly by \enc{Bühlmann}{Buhlmann} et al. (2014).
}
\source{
    R package hdi
}
\references{
    \enc{Bühlmann}{Buhlmann}, P., Kalisch, M., & Meier, L. (2014).
    High-dimensional statistics with a view towards applications in biology.
    \emph{Annual Review of Statistics and its Applications},
    \bold{1}, 255-278.
}
\examples{
library(glmnet)
data(riboflavin)
y = riboflavin$y
x = as.matrix(riboflavin$x)
set.seed(100)
fit_lasso = cv.glmnet(x, y, alpha = 1)
coef(fit_lasso, s = "lambda.min")
}
