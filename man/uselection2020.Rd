\name{uselection2020}
\alias{uselection2020}
\title{2020 U.S. Election Data}
\description{
    The data set contains election results for the 2020 U.S. presidential election, organized by state.
}
\usage{
    data(uselection2020)
}
\arguments{
  The data set includes the following states:
  \item{Arkansas}{The election data for Arkansas.}
  \item{Georgia}{The election data for Georgia.}
  \item{Illinois}{The election data for Illinois.}
  \item{Michigan}{The election data for Michigan.}
  \item{Minnesota}{The election data for Minnesota.}
  \item{Mississippi}{The election data for Mississippi.}
  \item{North Carolina}{The election data for North Carolina.}
  \item{Virginia}{The election data for Virginia.}

}
\details{
  A list of length 8, where each element is a list containing detailed election results for a specific state.
  Each state list has two elements:
  - \code{target}: A list of length 2 containing target data.
  - \code{source}: A list of length 47 containing source data.
}
\source{
    https://github.com/tonmcg/US_County_Level_Election_Results_08-24
    and 
    
    https://www.kaggle.com/benhamner/2016-us-election.
}
\references{
    Tian, Y., & Feng, Y. (2023).
    Transfer learning under high-dimensional generalized linear models.
    \emph{Journal of the American Statistical Association},
    \bold{118}(544), 2684-2697.
}
\examples{
library(glmtrans)
data(uselection2020)
str(uselection2020[['Arkansas']])
str(uselection2020[['Arkansas']]$target)
data_train <- uselection2020[['Arkansas']]
fit.binomial <- glmtrans(data_train$target, data_train$source, family = "binomial")
summary(fit.binomial)

data_train <- uselection2020[['Georgia']]
fit.binomial <- glmtrans(data_train$target, data_train$source, family = "binomial")
summary(fit.binomial)
}
