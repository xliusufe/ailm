\name{coloncancer}
\alias{coloncancer}
\title{Colon cancer data}
\description{
    The dataset contains 62 observations of 2000 gene expressions and a one-dimensional response.
    62 samples (40 tumor samples, 22 normal samples) from colon-cancer patients 
    were analyzed with an Affymetrix oligonucleotide array.
}
\usage{
    data(coloncancer)
}
\arguments{
\item{x}{A matrix with 62 rows and 2000 columns, 
    where each column represents expression values of a gene.}

\item{y}{Tissue identity, a categorical variable with two levels: 
         "n" for normal tissue and "t" for tumor tissue.}

}
\details{
    The dataset originates from the microarray experiment conducted by Alon et al. (1999), 
    which measured the gene expression levels of 6500 human genes in 40 tumor samples 
    and 22 normal colon tissue samples. Out of 6500 genes, 2000 were selected based on the 
    confidence in the measured expression levels (for details, see Alon et al. (1999)).
}
\source{
    http://microarray.princeton.edu/oncology/affydata/index.html 
    or 
    
    https://github.com/ramhiser/datamicroarray/blob/master/data/alon.RData
}
\references{
    Alon, U., Barkai, N., et al. (1999).
    Broad patterns of gene expression revealed by clustering analysis of tumor and normal colon tissues probed by oligonucleotide arrays.
    \emph{Proceedings of the National Academy of Sciences},
    \bold{96}(12), 6745-6750.
}
\examples{
data(coloncancer)
y <- coloncancer$y
x <- coloncancer$x
x_scaled <- scale(x)
pca_result <- prcomp(x_scaled, center = TRUE, scale = TRUE)
print(pca_result)
}
