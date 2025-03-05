\name{translassodemo}
\alias{translassodemo}
\title{Trans Lasso Demo Data}
\description{
    This dataset serves as a demo for the Trans Lasso (Transfer Lasso) method, which is designed for high-dimensional linear regression problems where data is sourced from multiple domains or datasets. The dataset includes both target and source data, as well as test data for validation.
}
\usage{
    data(translassodemo)
}
\arguments{
\item{X}{The independent variables (features) in the target and source data.}
\item{y}{The dependent variable (label or outcome) in the target and source data.}
\item{X_test}{The independent variables (features) in the test dataset.}
\item{y_test}{The dependent variable (label or outcome) in the test dataset.}
\item{n.vec}{A vector indicating the sample size of each dataset (target and source data).}
\item{beta0}{The true regression coefficients in the simulated data.}
\item{size.A0}{The number of transferable sets in the data.}
}
\details{
    This dataset is a demonstration of the Trans Lasso method, which aims to combine knowledge from multiple datasets (source and target) to improve regression models. The dataset includes both features and outcome variables from different domains, along with a simulated test set for performance evaluation. It is useful for illustrating the application of transfer learning techniques to high-dimensional regression tasks.
}
\source{
   Code adapted from Li, S., Cai, T. T., & Li, H. (2022).
   Transfer learning for high-dimensional linear regression: Prediction, estimation, and minimax optimality.
   \emph{Journal of the Royal Statistical Society Series B: Statistical Methodology},
   \bold{84}(1), 149-173.
}
\references{
  Li, S., Cai, T. T., & Li, H. (2022).
  Transfer learning for high-dimensional linear regression: Prediction, estimation and minimax optimality.
  \emph{Journal of the Royal Statistical Society Series B: Statistical Methodology},
  \bold{84}(1), 149-173.
}
\examples{
library(glmnet)
data(translassodemo)
y = translassodemo$y
X = translassodemo$X
set.seed(100)
#prop.re1 <- Trans.lasso(X, y, n.vec, I.til = 1:50, l1 = l1)
#print(prop.re1$beta.hat)
}
