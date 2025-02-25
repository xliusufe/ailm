\name{energy}
\alias{energy}
\title{Energy expenditure data}
\description{
    The energy expenditure for 104 females at rest for a 24 hour period.
}
\usage{
    data(energy)
}
\arguments{
\item{energy}{The energy expenditure (units not given); a numeric vector.}

\item{fat}{The mass of fat tissue (units not given); a numeric vector.}

\item{nonfat}{The mass of fat-free tissue (units not given); a numeric vector.}

}
\details{
    The data give the energy expenditure for 104 females at rest over a 24 hour period; the mass of fat
    and fat-free tissue was also recorded.

    Note that the total mass of each subject is the sum of the fat and fat-free tissue masses.
}
\source{
    R package GLMsData
}
\references{
    Jørgensen, B. (1992).
    Exponential dispersion models and extensions: A review.
    \emph{International Statistical Review}, 
    \bold{60}(1), 5-20.
}
\examples{
library(ailm)
data(energy)
model <- lm(energy ~ fat, data = energy)
summary(model)
}
