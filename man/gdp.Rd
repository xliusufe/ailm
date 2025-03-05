\name{gdp}
\alias{gdp}
\title{GDP growth rate data}
\description{
    The dataset contains GDP growth data compiled by Barro Lee.
    It includes 90 observations with 61 covariates.
}
\usage{
    data(gdp)
}
\arguments{
\item{outcome}{Dependent variable: national growth rates in GDP per capital for the periods 1965-1975 and 1975-1985.}

\item{x}{A list includes 61 covariates that could affect growth.}
}
\details{
    The dataset is a subset of the Barro-Lee panel data, which covers 138 countries from 1950 to 2010. 
    It includes 90 complete cases with 61 covariates, focusing on two growth periods: 1965-1975 (41 observations) 
    and 1975-1985 (49 observations). Growth rates are calculated using the log-difference method.
}
\source{
    This version of dataset is maintained in the R package hdm.

    The full data set and further details can be found at http://www.barrolee.com/
    and, 
    
    https://www.bristol.ac.uk//Depts//Economics//Growth//barlee.htm.
}
\references{
    Barro, R. J., & Lee, J. W. (1994). 
    Data set for a panel of 138 countries.

    Barro, R. J., & Lee, J. W. (2013). 
    A new data set of educational attainment in the world, 1950-2010. 
    \emph{Journal of Development Economics}, 
    \bold{104}, 184-198.

    Barro, R. J., & Sala-i-Martin, X. (1995). 
    \emph{Economic Growth}. 
    McGraw-Hill, New York.    
}
\examples{
data(gdp)
mean_growth <- mean(gdp$outcome, na.rm = TRUE)
cat("Average GDP growth rate:", round(mean_growth, 3), "\n")
model <- lm(outcome ~ x$gdpsh465 + x$freeop + x$p65, data = gdp)
summary(model)


library(RidgeVar)
data(gdp)
subset <- 1:41
y <- gdp$outcome[subset]
x <- as.matrix(gdp$x[subset, ])
fit_rr <- VAR_RR(y, x)
sigma2_RR <- fit_rr$sigma2
print(sigma2_RR)
}
