\name{glmtransbinomialdemo}
\alias{glmtransbinomialdemo}
\title{GLM trans demo data: logistic regression model}
\description{
    The dataset contains demo data for glmtrans, which is a simulated dataset for a logistic regression model.
}
\usage{
    data(glmtransbinomialdemo)
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
    Tian, Y., \& Feng, Y. (2023).
    Transfer learning under high-dimensional generalized linear models.
    \emph{Journal of the American Statistical Association},
    \bold{118}(544), 2684--2697.
    \doi{10.1080/01621459.2023.1838304}
}
\references{
    Tian, Y., \& Feng, Y. (2023).
    Transfer learning under high-dimensional generalized linear models.
    \emph{Journal of the American Statistical Association},
    \bold{118}(544), 2684--2697.
    \doi{10.1080/01621459.2023.1838304}
}
\examples{
library(ailm)
data(glmtransbinomialdemo)
str(glmtransbinomialdemo$D.training)
str(glmtransbinomialdemo$D.training$target)
}
