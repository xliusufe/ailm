\name{lime}
\alias{lime}
\title{Small-leaved lime trees data}
\description{
    The data is from small-leaved lime trees grown in Russia and contains 385 observations with 4 variables.
}
\usage{
    data(lime)
}
\arguments{
\item{foliage}{The foliage biomass, in kg (oven dried matter).}

\item{dbh}{The tree diameter, at breast height, in cm.}

\item{age}{The age of the tree, in years.}

\item{origin}{The origin of the tree; one of Coppice, Natural, Planted.}

}
\details{
    The data give measurements from small-leaved lime trees (Tilia cordata) growing in Russia.
}
\source{
    https://doi.pangaea.de/10.1594/PANGAEA.871491 or R package GLMsData
}
\references{
    Schepaschenko, D., Shvidenko, A., et al. (2017). 
    A dataset of forest biomass structure for Eurasia. 
    \emph{Scientific Data}, 
    \bold{4}(1), 1-11.
}
\examples{
data(lime)
lime$origin <- as.integer(lime$origin)
df <- scale(lime, center = FALSE)
y <- as.matrix(df[,1])
x <- df[,2:4]
model <- lm(y ~ x)
summary(model)
}
