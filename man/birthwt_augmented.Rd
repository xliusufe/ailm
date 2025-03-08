\name{birthwt_augmented}
\alias{birthwt_augmented}
\title{Augmented Birth Weight Data}
\description{
  The birthwt_augmented dataset is an enhanced version of the original birthweight dataset. In this augmented dataset, polynomial transformations of continuous predictors and dummy coding of categorical predictors have been applied to capture potential nonlinear relationships and interactions.
}
\usage{
  data(birthwt_augmented)
}
\format{
  A data frame with 189 observations on 21 variables. The variables are:
  \describe{
    \item{age1}{First-order polynomial term for mother's age.}
    \item{age2}{Second-order polynomial term for mother's age.}
    \item{age3}{Third-order polynomial term for mother's age.}
    \item{lwt1}{First-order polynomial term for mother's weight (at last menstrual period).}
    \item{lwt2}{Second-order polynomial term for mother's weight.}
    \item{lwt3}{Third-order polynomial term for mother's weight.}
    \item{race2}{Dummy variable for race (with race1 as the reference group).}
    \item{race3}{Dummy variable for race.}
    \item{ptl1}{Dummy variable for the number of previous premature labors.}
    \item{ptl2}{Dummy variable for the number of previous premature labors.}
    \item{ptl3}{Dummy variable for the number of previous premature labors.}
    \item{ftv1}{Dummy variable for the number of physician visits during the first trimester.}
    \item{ftv2}{Dummy variable for the number of physician visits during the first trimester.}
    \item{ftv3}{Dummy variable for the number of physician visits during the first trimester.}
    \item{ftv4}{Dummy variable for the number of physician visits during the first trimester.}
    \item{ftv6}{Dummy variable for the number of physician visits during the first trimester.}
    \item{low}{Binary variable indicating low birth weight (1 if birth weight is below 2500 grams, 0 otherwise).}
    \item{smoke}{Smoking status during pregnancy (1 = smoker, 0 = non-smoker).}
    \item{ht}{History of hypertension (1 = yes, 0 = no).}
    \item{ui}{Presence of uterine irritability (1 = yes, 0 = no).}
    \item{bwt}{Birth weight in grams (response variable).}
  }
}
\details{
  This dataset is derived from the original birthweight dataset after applying data augmentation procedures. Specifically:
  \itemize{
    \item The categorical variables \code{race}, \code{ptl}, and \code{ftv} were first converted to factors and then expanded into dummy variables using \code{model.matrix()}. Note that \code{race1} was set as the baseline group and omitted.
    \item A third-degree polynomial expansion was performed on the continuous variables \code{age} and \code{lwt}, generating three new features each (i.e., \code{age1}, \code{age2}, \code{age3} and \code{lwt1}, \code{lwt2}, \code{lwt3}).
    \item The resulting polynomial features, dummy variables, and the remaining variables (after removing the original \code{age}, \code{lwt}, and factor versions of \code{race}, \code{ptl}, and \code{ftv}) were combined to form the final augmented dataset.
  }
  The final dataset has dimensions of 189 observations and 21 variables.
}
\source{
  Venables, W. N., & Ripley, B. D. (2002). \emph{Modern Applied Statistics with S}. Springer.
}
\references{
  Hosmer, D. W., & Lemeshow, S. (1989). \emph{Applied Logistic Regression}. John Wiley & Sons.
}
\examples{
library(gglasso)
data(birthwt_augmented)
x = as.matrix(birthwt_augmented[, -21])
y = birthwt_augmented$bwt
group = c(rep(1:2, each = 3), rep(3, 2), rep(4, 3), rep(5, 5), 6:9)
set.seed(12345)
fit_gglasso = cv.gglasso(x, y, group, loss = "ls", pred.loss = "L2")
}