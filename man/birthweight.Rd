\name{birthweight}
\alias{birthweight}
\title{Birth weight data}
\description{
    The birthweight dataset contains measurements on infants' birth weights along with various maternal risk factors.
}
\usage{
    data(birthweight)
}
\arguments{
    \item{low}{A binary variable indicating whether the birth weight is low (i.e., below 2500 grams; 1 = low, 0 = normal).}

    \item{age}{Age of the mother in years.}

    \item{lwt}{Weight of the mother (in pounds) at the last menstrual period.}

    \item{race}{Race of the mother (1 = White, 2 = Black, 3 = Other).}

    \item{smoke}{Smoking status during pregnancy (1 = Yes, 0 = No).}

    \item{ptl}{Number of previous premature labors.}

    \item{ht}{History of hypertension (1 = Yes, 0 = No).}

    \item{ui}{Presence of uterine irritability (1 = Yes, 0 = No).}

    \item{ftv}{Number of physician visits during the first trimester.}

    \item{bwt}{Birth weight in grams (the response variable).}
}
\details{
    This dataset originates from a study examining risk factors associated with low birth weight in a cohort of 189 infants.
}
\source{
    Venables, W. N., & Ripley, B. D. (2002). \emph{Modern Applied Statistics with S}. Springer.
}
\references{
    Hosmer, D. W., & Lemeshow, S. (1989). \emph{Applied Logistic Regression}. John Wiley & Sons.
}
\examples{
data(birthweight)
head(birthweight)
}
