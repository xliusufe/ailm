\name{ais}
\alias{ais}
\title{Australian Institute of Sports (AIS) data}
\description{
    Physical measurements and blood measurements from high performance athletes at the AIS.
    The dataset contains 202 observations with 13 variables.
}
\usage{
    data(ais)
}
\arguments{
\item{sex}{The sex of the athlete: F means female, and M means male.}

\item{sport}{The sport of the athlete; one of BBall (basketball), Field, Gym (gymnastics), Netball,
Rowing, Swim, T400m (track, further than 400m), Tennis, TSprnt (track sprint events), WPolo (waterpolo).}

\item{lbm}{Lean body mass, in kg.}

\item{ht}{Height, in cm.}

\item{wt}{Weight, in kg.}

\item{bmi}{Body mass index, in kg per metre-squared.}

\item{ssf}{Sum of skin folds.}

\item{rbc}{Red blood cell count, in \eqn{10^{12}}{10^12} per litre.}

\item{wbc}{White blood cell count, in \eqn{10^{12}}{10^12} per litre.}

\item{hct}{Hematocrit, in percent.}

\item{hgb}{Hemoglobin concentration, in grams per decilitre.}

\item{ferr}{Plasma ferritins, in ng per decilitre.}

\item{pbf}{Percentage body fat.}

}
\details{
    The data give measurements from high-performance athletes from the Australian Institute of Sport
    (AIS), for 202 athletes (102 males; 100 females) on 13 variables. Telford and Cunningham (1991)
    provide more information on how the data were collected.
}
\source{
    http://www.statsci.org/data/ or R package GLMsData
}
\references{
    Telford, R. D., & Cunningham, R. B. (1991). 
    Sex, sport, and body-size dependency of hematology in highly trained athletes. 
    \emph{Medicine and Science in Sports and Exercise},
    \bold{23}(7), 788-794.
}
\examples{
data(ais)
model <- lm(hgb ~ lbm + bmi + pbf, data = ais)
summary(model)


library(Renvlp)
data(ais)
ais$sex = as.numeric(ais$sex)
ais$sport = as.numeric(ais$sport)
y_col = c("rbc", "wbc", "lbm", "bmi")
x_col = c("sex", "sport", "ht")
Y = as.matrix(ais[, y_col])
X = as.matrix(ais[, x_col])
Y = scale(Y)
X = scale(X)
set.seed(123)
u_hat <- u.env(X, Y)$u.bic
model <- env(X, Y, u_hat)
print(model)
}
