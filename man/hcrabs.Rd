\name{hcrabs}
\alias{hcrabs}
\title{Males attached to female horseshoe crabs}
\description{
    The number of male crabs attached to female horseshoe crabs.
    The dataset contains 173 observations with 5 variables.
}
\usage{
    data(hcrabs)
}
\arguments{
\item{col}{The color of the female; a factor with levels LM (light medium), M (medium), DM (dark medium)
or D (dark).}

\item{spine}{The spine condition; a factor with levels BothOK, OneOK or NoneOK.}

\item{width}{The carapace width of the female crab in cm; a numeric vector.}

\item{wt}{The weight of the female crab in grams; a numeric vector.}

\item{sat}{The number of male crabs attached to the female; a numeric vector.}

}
\details{
    The data come from an observational study of nesting horseshoe crabs (Brockmann, 1996; p. 4).
}
\source{
    R package GLMsData
}
\references{
    Brockmann, H. J. (1996). 
    Satellite male groups in horseshoe crabs, Limulus polyphemus.
    \emph{Ethology},
    \bold{102}(1), 1-21.
}
\examples{
data(hcrabs)
hcrabs$col <- as.integer(hcrabs$col)
hcrabs$spine <- as.integer(hcrabs$spine)
df <- scale(hcrabs, center = FALSE)
y <- as.matrix(df[,5])
x <- df[,1:4]
model <- lm(y ~ x)
summary(model)
}
