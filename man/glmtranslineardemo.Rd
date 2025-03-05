\name{glmtranslineardemo}
\alias{glmtranslineardemo}
\title{GLM trans demo data: linear regression model}
\description{
    The dataset contains demo data for glmtrans, which is a simulated dataset for a linear regression model.
}
\usage{
    data(glmtranslineardemo)
}
\arguments{
\item{D.training}{Contains both the target and source data.}
\item{D.training$target}{Target data, including both independent variables and the response variable.}
\item{D.training$source}{Source data, including both independent variables and the response variable.}
\item{D.test}{Contains the target test data.}
}
\details{
    The dataset is used to demonstrate the glmtrans method,
    which applies transfer learning in the context of high-dimensional generalized linear models.
}
\source{
    Tian, Y., & Feng, Y. (2023).
    Transfer learning under high-dimensional generalized linear models.
    \emph{Journal of the American Statistical Association},
    \bold{118}(544), 2684-2697.
}
\references{
    Tian, Y., & Feng, Y. (2023).
    Transfer learning under high-dimensional generalized linear models.
    \emph{Journal of the American Statistical Association},
    \bold{118}(544), 2684-2697.
}
\examples{
library(glmtrans)
data(glmtranslineardemo)
str(glmtranslineardemo$D.training)
str(glmtranslineardemo$D.training$target)

D.training <-glmtranslineardemo$D.training
D.test <- glmtranslineardemo$D.test
fit.gaussian <- glmtrans(D.training$target, D.training$source)
summary(fit.gaussian)
y.pred.glmtrans <- predict(fit.gaussian, D.test$target$x)
}
