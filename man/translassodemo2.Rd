\name{translassodemo2}
\alias{translassodemo2}
\title{Trans Lasso Demo Data}
\description{
    This dataset serves as a demo for the Trans Lasso (Transfer Lasso) method, which is designed for high-dimensional linear regression problems where data is sourced from multiple domains or datasets. The dataset includes both target and source data, as well as test data for validation.
}
\usage{
    data(translassodemo2)
}
\arguments{
    \item{translassodemo2[[1]]}{The target data including  independent variables (features), the dependent variable (label or outcome) and lambda}
    \item{translassodemo2[[2]]}{The source data including  independent variables (features) and the dependent variable (label or outcome)}
    \item{translassodemo2[[3]]}{The source data including  independent variables (features) and the dependent variable (label or outcome)}
    \item{translassodemo2[[4]]}{The source data including  independent variables (features) and the dependent variable (label or outcome)}
    \item{translassodemo2[[5]]}{The source data including  independent variables (features) and the dependent variable (label or outcome)}
    \item{translassodemo2[[6]]}{The source data including  independent variables (features) and the dependent variable (label or outcome)}
    \item{translassodemo2[[7]]}{The source data including  independent variables (features) and the dependent variable (label or outcome)}

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
library(hdtrd)
data(translassodemo2)
fit <- translasso(target = translassodemo2[[1]], source = translassodemo2[-1], idtrans = seq(5))
fit$beta[1:10]
}
