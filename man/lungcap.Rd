\name{lungcap}
\alias{lungcap}
\title{Lung capacity and smoking in youth}
\description{
    The health and smoking habits of 654 youth.
    The dataset contains 654 observations on 5 variables.
}
\usage{
    data(lungcap)
}
\arguments{
\item{age}{The age of the subject in completed years; a numeric vector.}

\item{fev}{The forced expiratory volume in litres, a measure of lung capacity; a numeric vector.}

\item{ht}{The height in inches; a numeric vector.}

\item{gender}{The gender of the subjects: a numeric vector with females coded as 0 and males as 1.}

\item{smoke}{The smoking status of the subject: a numeric vector with non-smokers coded as 0 and smokers as 1.}

}
\details{
    The data give information on the health and smoking habits of a sample of 654 youths, aged 3 to
    19, in the area of East Boston during middle to late 1970s.
}
\source{
    R package GLMsData
}
\references{
    Kahn, M. (2003). 
    Data Sleuth.
    \emph{STATS}, 
    \bold{37}, 24.

    Kahn, M. (2005).
    An exhalent problem for teaching statistics. 
    \emph{The Journal of Statistical Education},
    \bold{13}(2).

    Tager, I. B., Weiss, S. T., et al. (1983).
    Longitudinal study of the effects of maternal smoking on pulmonary function in children. 
    \emph{New England Journal of Medicine}, 
    \bold{309}(12), 699-703.
}
\examples{
library(ailm)
data(lungcap)
model = lm(fev ~ ., data = lungcap)
summary(model)
}
