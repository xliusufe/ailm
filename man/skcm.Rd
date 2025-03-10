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
\item{y}{A numeric vector of length 361 representing Breslow's thickness, a clinicopathologic feature of cutaneous melanoma.}

\item{gexp}{A data frame with 361 rows and 2000 columns, 
    where each column represents expression values of a gene. 
    Gene names are provided as column names (e.g., SLC8A1, DPYD).}

\item{adj_matrix}{
    A 2000 x 2000 adjacency matrix representing gene-gene interaction relationships in \code{gexp}.
    Entries are defined as:
    \itemize{
\item 1: If two genes are directly interacting in the KEGG melanoma pathway (hsa05218)
\item 0: Otherwise (no interaction or gene not in the pathway)
}
    We obtain melanoma-related pathway data through KEGG portal:
    \enumerate{
\item Access https://www.kegg.jp/ and search "melanoma"
\item Identify pathway ID: \code{hsa05218} (Skin Cutaneous Melanoma)
\item Contains 73 genes with curated regulatory relationships
}
    Key construction steps see Details.
}
}
\details{
    The dataset includes 361 samples with outcomes (Breslow's thickness measurements) and expression levels of the top 2000 most variable genes. 
    It is derived from The Cancer Genome Atlas (TCGA) for Skin Cutaneous Melanoma (SKCM), one of the most aggressive cancer types.

    \code{adj_matrix} construction follows these key steps:
\enumerate{
\item \strong{Pathway Data Retrieval}: Download KGML file from KEGG via:
\preformatted{
download.file("https://rest.kegg.jp/get/hsa05218/kgml", "melanoma_kgml.xml")
}

\item \strong{Graph Parsing}: Convert KGML to adjacency matrix:
\preformatted{
if (!require("BiocManager", quietly = TRUE))
install.packages("BiocManager")
BiocManager::install("KEGGgraph")

library(KEGGgraph)
melanoma_kgml <- "melanoma_kgml.xml"
kegg_graph <- parseKGML2Graph(melanoma_kgml, genesOnly = TRUE)
adjacent <- as(kegg_graph, "matrix")
adj_matrix_KEGG <- adjacent + t(adjacent)
}

\item \strong{Gene ID Conversion}: Map KEGG IDs to Gene Symbols:
\preformatted{
BiocManager::install("KEGGREST")
BiocManager::install("org.Hs.eg.db")

library(KEGGREST)
library(org.Hs.eg.db)
kegg_genes <- keggLink("hsa", "hsa05218")
kegg_ids <- gsub("hsa:", "", kegg_genes)
gene_symbols <- mapIds(org.Hs.eg.db,
                    keys = kegg_ids,
                    column = "SYMBOL",
                    keytype = "ENTREZID")  # Get Symbol mapping
rownames(adj_matrix_KEGG) <- gene_symbols[match(rownames(adj_matrix_KEGG), kegg_genes)]
colnames(adj_matrix_KEGG) <- rownames(adj_matrix_KEGG)
}
  
\item \strong{Matrix Embedding}: Create final adjacency matrix:
\preformatted{
gene_skcm <- colnames(skcm$gexp)
p <- length(gene_skcm)
adj_matrix_skcm <- matrix(0, nrow = p, ncol = p, dimnames = list(gene_skcm, gene_skcm))
common_genes <- intersect(gene_skcm, gene_symbols)
adj_matrix_skcm[common_genes, common_genes] <- adj_matrix_KEGG[common_genes, common_genes]
}
}
}
\source{
    The Cancer Genome Atlas (TCGA) portal: https://tcga-data.nci.nih.gov
}
\references{
    The Cancer Genome Atlas Consortium. (2015).
    Genomic classification of cutaneous melanoma. 
    \emph{Cell}, 
    \bold{161}(7), 1681-1696.

    Tan, X., Zhang, X., Cui, Y., & Liu, X. (2024). 
    Uncertainty quantification in high-dimensional linear models incorporating graphical structures with applications to gene set analysis. 
    \emph{Bioinformatics}, 
    \bold{40}(9), btae541.
}
\examples{
data(skcm)
hist(skcm$y, main = "Distribution of Clinical Outcomes", xlab = "Outcome Value")
pca_result <- prcomp(skcm$gexp[, 1:100], scale = TRUE) # Run PCA on the top 100 genes
plot(pca_result$x[, 1:2], main = "PCA of Gene Expression Data")
}
