\name{skcm}
\alias{skcm}
\title{Skin Cutaneous Melanoma (SKCM) data}
\description{
    The dataset contains clinical outcome measurements and high-dimensional gene expression profiles from 361 subjects with skin cutaneous melanoma.
}
\usage{
    data(skcm)
}
\arguments{
\item{y}{A numeric vector of length 361 containing clinical outcomes (e.g., survival status or time).}

\item{gexp}{A data frame with 361 rows and 2000 columns, 
    where each column represents expression values of a gene. 
    Gene names are provided as column names (e.g., SLC8A1, DPYD).}
}
\details{
    The dataset includes 361 samples with outcomes (e.g., survival) and expression levels of the top 2000 most variable genes. 
    It is derived from The Cancer Genome Atlas (TCGA) for Skin Cutaneous Melanoma (SKCM), one of the most aggressive cancer types.
}
\source{
    The Cancer Genome Atlas (TCGA) portal: https://tcga-data.nci.nih.gov
}
\references{
    The Cancer Genome Atlas Consortium. (2015).
    Genomic classification of cutaneous melanoma. 
    \emph{Cell}, 
    \bold{161}(7), 1681-1696.
}
\examples{
library(ailm)
data(skcm)
hist(skcm$y, main = "Distribution of Clinical Outcomes", xlab = "Outcome Value")
pca_result <- prcomp(skcm$gexp[, 1:100], scale = TRUE) # Run PCA on the top 100 genes
plot(pca_result$x[, 1:2], main = "PCA of Gene Expression Data")
}
