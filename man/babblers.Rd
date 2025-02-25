\name{babblers}
\alias{babblers}
\title{Feeding rates of babblers}
\description{
    The daily individual feeding rates of chestnut-crowned babblers.
    The dataset contains 97 observations on 8 variables.
}
\usage{
    data(babblers)
}
\arguments{
\item{obstime}{The length of observation (in decimal hours); a numeric vector.}

\item{sex}{The sex of the bird; one of f (female) or m (male).}

\item{age}{The age of non-breeding group members; one of adult or yearling.}

\item{relatedness}{The pedigree-based relatedness to the brood; one of 0.5 (first-order relatives); 0.25
(second-order relatives) or 0 (more distant relatives).}

\item{chickage}{The age of the brood, in days; a numeric vector.}

\item{broodsize}{The size of the brood; a numeric vector.}

\item{unitsize}{The number of individuals in the unit; a numeric vector.}

\item{feedingrate}{The daily individual feeding rates, in feeds per hour; a numeric vector.}
}
\details{
    The data relate to a population of colour-ringed population of chestnut-crowned babblers in an
    area of the University of New South Wales Arid Zone Research Station, (Fowlers Gap, western
    New South Wales, Australia). The study determined whether, where and how often non-breeding
    group members contributed to providing for nestlings by monitoring the visit rate of tagged birds
    during 2007 and 2008. These data are extracted from a larger data set, extracted so that there is one
    (randomly chosen) observation for each individual bird.
}
\source{
    R package GLMsData
}
\references{
    Browning, L. E., Patrick, S. C., et al. (2012). 
    Kin selection, not group augmentation, predicts helping in an obligate cooperatively breeding bird. 
    \emph{Proceedings of the Royal Society B: Biological Sciences},
    \bold{279}(1743), 3861-3869.
}
\examples{
library(ailm)
data(babblers)
model = lm(feedingrate ~ ., data = babblers)
summary(model)
}
