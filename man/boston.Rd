\name{boston}
\alias{boston}
\title{Boston housing data}
\description{
    The dataset contains information on housing values in suburbs of Boston, including various attributes such as crime rate, property tax, and average number of rooms.
}
\usage{
    data(boston)
}
\arguments{
\item{crim}{Per capita crime rate by town.}

\item{zn}{Proportion of residential land zoned for large lots (over 25,000 square feet).}

\item{indus}{Proportion of non-retail business acres per town.}

\item{chas}{Charles River dummy variable (1 if tract bounds river; 0 otherwise).}

\item{nox}{Nitrogen oxide concentration (parts per 10 million).}

\item{rm}{Average number of rooms per dwelling.}

\item{age}{Proportion of owner-occupied units built before 1940.}

\item{dis}{Weighted distance to employment centers in Boston.}

\item{rad}{Index of accessibility to radial highways.}

\item{tax}{Full-value property tax rate per $10,000.}

\item{ptratio}{Pupil-teacher ratio by town.}

\item{b}{Proportion of residents of African American descent.}

\item{lstat}{Percentage of lower status population.}

\item{medv}{Median value of owner-occupied homes in $1000s.}
}
\details{
    The dataset is derived from the Boston Housing dataset, originally from the UCI Machine Learning Repository.
    It contains data collected from 506 census tracts in Boston, providing a snapshot of various housing-related features, which can be used for regression and classification tasks in machine learning.
}
\source{
    https://lib.stat.cmu.edu/datasets/boston or R package MASS
}
\references{
    Harrison, D., & Rubinfeld, D. L. (1978).
    Hedonic housing prices and the demand for clean air.
    \emph{Journal of Environmental Economics and Management},
    \bold{5}(1), 81-102.
}
\examples{
data(boston)
model = lm(medv ~ ., data = boston)
summary(model)
}