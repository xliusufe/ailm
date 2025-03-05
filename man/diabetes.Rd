\name{diabetes}
\alias{diabetes}
\title{diabetes data}
\description{
    The dataset records information for 422 diabetic patients. This dataset includes various health metrics that may be used to predict the prograssion of diabetes in patients.
}
\usage{
    data(diabetes)
}
\arguments{
    \item{x}{A matrix with 10 columns, including variables "age", "sex", "bmi" (body mass index), "map" (average blood pressure), "tc" (total serum cholesterol), "ldl" (low-density lipoproteins), "hdl" (high-density lipoproteins), "tch" (total cholesterol/HDL), "ltg" (possibly log of serum triglycerides level), "glu" (blood sugar level).}
    \item{y}{A numeric vector, which is a quantitative measure of disease progression one year after baseline.}
    \item{x2}{A matrix with 64 columns. This matrix consists of x plus certain interactions.}
}
\details{
    The diabetes dataset is used to explore how various factors such as BMI and blood pressure can be used to predict diabetes progression. 
    The dataset is derived from a study by , which is available in the "lars" package.
}
\source{
    R package lars
}
\references{
    Efron, B., Hastie, T., Johnstone, I., & Tibshirani, R. (2004). Least angle regression. 
    \emph{Annals of Statistics},
    \bold{32}(2), 407-499.
}
\examples{
library(glmnet)
data(diabetes)
fit = glmnet(diabetes$x,diabetes$y)
coef(fit, s = 1)
}
