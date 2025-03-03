\name{gtexbrain}
\alias{gtexbrain}
\title{Gtex brain data}
\description{
    The dataset contains gene expression data from the GTEx (Genotype-Tissue Expression) project,
    specifically focusing on brain tissue samples.
    It includes gene sequencing results from 48 different tissue types,
    with detailed information about gene expression levels across various tissues, including the brain and other organs.
}
\usage{
    data(gtexbrain)
}
\arguments{
The data set includes the following tissue types:
  \item{Adipose_Subcutaneous}{The data of tissues named 'Adipose_Subcutaneous'.}
  \item{Adipose_Visceral_Omentum}{The data of tissues named 'Adipose_Visceral_Omentum'.}
  \item{Adrenal_Gland}{The data of tissues named 'Adrenal_Gland'.}
  \item{Artery_Aorta}{The data of tissues named 'Artery_Aorta'.}
  \item{Artery_Coronary}{The data of tissues named 'Artery_Coronary'.}
  \item{Artery_Tibial}{The data of tissues named 'Artery_Tibial'.}
  \item{Brain_Amygdala}{The data of tissues named 'Brain_Amygdala'.}
  \item{Brain_Anterior_cingulate_cortex_BA24}{The data of tissues named 'Brain_Anterior_cingulate_cortex_BA24'.}
  \item{Brain_Caudate_basal_ganglia}{The data of tissues named 'Brain_Caudate_basal_ganglia'.}
  \item{Brain_Cerebellar_Hemisphere}{The data of tissues named 'Brain_Cerebellar_Hemisphere'.}
  \item{Brain_Cerebellum}{The data of tissues named 'Brain_Cerebellum'.}
  \item{Brain_Cortex}{The data of tissues named 'Brain_Cortex'.}
  \item{Brain_Frontal_Cortex_BA9}{The data of tissues named 'Brain_Frontal_Cortex_BA9'.}
  \item{Brain_Hippocampus}{The data of tissues named 'Brain_Hippocampus'.}
  \item{Brain_Hypothalamus}{The data of tissues named 'Brain_Hypothalamus'.}
  \item{Brain_Nucleus_accumbens_basal_ganglia}{The data of tissues named 'Brain_Nucleus_accumbens_basal_ganglia'.}
  \item{Brain_Putamen_basal_ganglia}{The data of tissues named 'Brain_Putamen_basal_ganglia'.}
  \item{Brain_Spinal_cord_cervical_c-1}{The data of tissues named 'Brain_Spinal_cord_cervical_c-1'.}
  \item{Brain_Substantia_nigra}{The data of tissues named 'Brain_Substantia_nigra'.}
  \item{Breast_Mammary_Tissue}{The data of tissues named 'Breast_Mammary_Tissue'.}
  \item{Cells_EBV-transformed_lymphocytes}{The data of tissues named 'Cells_EBV-transformed_lymphocytes'.}
  \item{Cells_Transformed_fibroblasts}{The data of tissues named 'Cells_Transformed_fibroblasts'.}
  \item{Colon_Sigmoid}{The data of tissues named 'Colon_Sigmoid'.}
  \item{Colon_Transverse}{The data of tissues named 'Colon_Transverse'.}
  \item{Esophagus_Gastroesophageal_Junction}{The data of tissues named 'Esophagus_Gastroesophageal_Junction'.}
  \item{Esophagus_Mucosa}{The data of tissues named 'Esophagus_Mucosa'.}
  \item{Esophagus_Muscularis}{The data of tissues named 'Esophagus_Muscularis'.}
  \item{Heart_Atrial_Appendage}{The data of tissues named 'Heart_Atrial_Appendage'.}
  \item{Heart_Left_Ventricle}{The data of tissues named 'Heart_Left_Ventricle'.}
  \item{Liver}{The data of tissues named 'Liver'.}
  \item{Lung}{The data of tissues named 'Lung'.}
  \item{Minor_Salivary_Gland}{The data of tissues named 'Minor_Salivary_Gland'.}
  \item{Muscle_Skeletal}{The data of tissues named 'Muscle_Skeletal'.}
  \item{Nerve_Tibial}{The data of tissues named 'Nerve_Tibial'.}
  \item{Ovary}{The data of tissues named 'Ovary'.}
  \item{Pancreas}{The data of tissues named 'Pancreas'.}
  \item{Pituitary}{The data of tissues named 'Pituitary'.}
  \item{Prostate}{The data of tissues named 'Prostate'.}
  \item{Skin_Not_Sun_Exposed_Suprapubic}{The data of tissues named 'Skin_Not_Sun_Exposed_Suprapubic'.}
  \item{Skin_Sun_Exposed_Lower_leg}{The data of tissues named 'Skin_Sun_Exposed_Lower_leg'.}
  \item{Small_Intestine_Terminal_Ileum}{The data of tissues named 'Small_Intestine_Terminal_Ileum'.}
  \item{Spleen}{The data of tissues named 'Spleen'.}
  \item{Stomach}{The data of tissues named 'Stomach'.}
  \item{Testis}{The data of tissues named 'Testis'.}
  \item{Thyroid}{The data of tissues named 'Thyroid'.}
  \item{Uterus}{The data of tissues named 'Uterus'.}
  \item{Vagina}{The data of tissues named 'Vagina'.}
  \item{Whole_Blood}{The data of tissues named 'Whole_Blood'.}
}
\details{
    This dataset contains gene expression profiles and genomic data derived from the Genotype-Tissue Expression (GTEx) project.
    It includes gene sequencing data for 48 tissue types, including various brain regions.
    The GTEx project aims to provide comprehensive data to better understand gene expression variability across tissues
    and how it relates to genetic variation. This resource is often used in genomics and biomedical research, helping to
     identify tissue-specific gene regulation and its potential implications for diseases like cancer and neurological
     disorders.
}
\source{
    Genotype-Tissue Expression (GTEx) project, available at: \url{https://www.gtexportal.org/home/}
}
\references{
  Li, S., Cai, T. T., \& Li, H. (2022).
  Transfer learning for high-dimensional linear regression: Prediction, estimation and minimax optimality.
  \emph{Journal of the Royal Statistical Society Series B: Statistical Methodology},
  \bold{84}(1), 149--173.
}
\examples{
library(ailm)
library(hdtrd)
# 加载gtexbrain数据集
data('gtexbrain.rda')
# 提取Brain_Amygdala的数据
amygdala_data <- gtexbrain[["Brain_Amygdala"]]
# 找到JAM2基因的列索引
jam2_col <- which(colnames(amygdala_data) == "JAM2")
# 如果没有找到JAM2基因，则抛出错误
if (length(jam2_col) == 0) {
	stop("JAM2 gene not found in Brain_Amygdala data.")
}
# 分离Y（JAM2基因）和X（剩余基因）
target_Y <- amygdala_data[, jam2_col]
target_X <- amygdala_data[, -jam2_col]
# 准备源数据集
source_data_list <- lapply(setdiff(names(gtexbrain), "Brain_Amygdala"), function(tissue) {
	tissue_data <- gtexbrain[[tissue]]

	# 找到JAM2基因的列索引
	jam2_col <- which(colnames(tissue_data) == "JAM2")

	if (length(jam2_col) == 0) {
	warning(paste("JAM2 gene not found in", tissue, "data. Skipping this tissue."))
	return(NULL)
	}
	# 分离Y（JAM2基因）和X（剩余基因）
	Y <- tissue_data[, jam2_col]
	X <- tissue_data[, -jam2_col]
	list(Y = Y, X = X)
})
# 使用translasso进行迁移学习分析
fit_translasso <- translasso(
	target = list(Y = target_Y, X = target_X),
	source = source_data_list,
	idtrans = seq_along(source_data_list)  # 使用所有源数据集
)
# 查看估计系数
print(fit_translasso$beta)
}
