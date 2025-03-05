\name{breastcancer}
\alias{breastcancer}
\title{Breast cancer data}
\description{
    The dataset contains gene expression and gene copy number information from 89 subjects.
}
\usage{
    data(breastcancer)
}
\arguments{
\item{dna}{Copy number variation (CNV) data representing genomic DNA amplification or deletion events in tumor samples.}

\item{rna}{Gene expression profiles measured via RNA transcript levels (e.g., microarray or RNA-seq data).}

\item{chrom}{Chromosome numbers (1-22, X, Y) corresponding to the genomic location of the measured genes.}

\item{nuc}{Nucleotide positions (start/end coordinates) of genes or probes on the chromosome (e.g., hg18/hg19 reference).}

\item{gene}{Unique gene identifiers (e.g., Entrez Gene IDs or probe IDs) linked to genomic features.}

\item{genenames}{Official gene symbols or names (e.g., BRCA1, ERBB2) standardized by HUGO Gene Nomenclature Committee (HGNC).}

\item{genechr}{Chromosomal mapping information for each gene (e.g., "chr17" for TP53).}

\item{genedesc}{Brief functional descriptions of genes (e.g., "tumor protein p53" or "estrogen receptor 1").}

\item{genepos}{Genomic coordinates of genes (e.g., cytoband or base-pair positions like "17q21.31").}

}
\details{
    The dataset is derived from molecular bioinformatics data obtained from breast cancer tissue samples treated according to the standard of care between 1989 and 1997. 
    It primarily consists of gene expression profiles and copy number variation data across 22 chromosomal pairs in tumor tissue samples from 89 breast cancer patients.
    For a detailed explanation of this dataset, please refer to Chin et al. (2006).
}
\source{
    http://icbp.lbl.gov/breastcancer/ or R package PMA
}
\references{
    Chin, K., DeVries, S., et al. (2006). 
    Genomic and transcriptional aberrations linked to breast cancer pathophysiologies.
    \emph{Cancer cell},
    \bold{10}(6), 529-541.}
\examples{
library(glmnet)
data(breastcancer)
dna = breastcancer$dna[breastcancer$chrom==21,]
rna = breastcancer$rna[which(breastcancer$genechr==21),]
y = dna[1,]
x = t(rna)
set.seed(100)
fit_ridge = cv.glmnet(x,y,alpha = 0)
coef(fit_ridge, s = "lambda.min")
fit_lasso = cv.glmnet(x,y,alpha = 1)
coef(fit_lasso, s = "lambda.min")


library(rrpack)
data(breastcancer)
X = t(breastcancer$dna[breastcancer$chrom==21,])
Y = t(breastcancer$rna[which(breastcancer$genechr==21),])
set.seed(123)
model <- rssvd(Y = Y, X = X, nrank = 1, ic.type = "BIC")
summary(model)
U <- model$U
V <- model$V
D <- model$D
B_approx <- D * U %*% t(V)
}
