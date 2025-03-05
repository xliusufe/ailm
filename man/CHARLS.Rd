\name{CHARLS}
\alias{CHARLS}
\title{China Health and Retirement Longitudinal Study (CHARLS) data of Hebei, Shandong, and Fujian provinces.}
\description{
    The dataset contains the CHARLS data collected in Hebei, Shandong, and Fujian provinces.
}
\usage{
    data(CHARLS)
}
\arguments{
    \item{hebei}{The CHARLS data of Hebei province. A matrix with 257 rows and 50 columns including the response y and the 49 covariates v1,...,v49.}
    \item{shandong}{The CHARLS data of Shandong province. A matrix with 413 rows and 50 columns including the response y and the 49 covariates v1,...,v49.}
    \item{fujian}{The CHARLS data of Fujian province. A matrix with 167 rows and 50 columns including the response y and the 49 covariates v1,...,v49.}
}
\details{
    The response y is the annual support income of elderly people, and the covariates v1,...,v49 denote the covariates "gender", "age", "marital status", "live alone", "live with a spouse", "live with children", 
    "live with other members such as parents", "health status", "pension income", "whether to receive a pension", "the number of surviving children", "wage income per household", "net operating income per household", 
    "net transfer income per household", "the number of children with college degree or above", "the number of children earning over 10000 CNY each year", "emotional comfort", "the number of household members", "the number of deceased biological children", 
    "the number of surviving adopted children", "the number of surviving sons", "financial support for parents", "financial support for other relatives", "net financial support received from other relatives", "the number of types of disability", 
    "have a chronic illness", "whether to receive a retirement pension", "retirement pension income", "new rural pension income", "all other pension income", "pension income of elderly households", "the total financial assets of the elderly and their spouses", 
    "the wage income of the main members of the household", "government subsidies for individual families in the past year", "government subsidies for the main members of the family", "the wage income of family's other members in the past year", 
    "government subsidies for other members of the family", "total government subsidies for families", "government transfer income for households", "net household income excludes private transfer income", "net household income", 
    "net household income per capita", "other net private transfer income of the elderly", "the family shared income received by the elderly", "whether to complete high school education", "annual net income from other sources", "financial support for children". 
    For a detailed explanation of this dataset, please refer to Ren et al. (2006).
}
\source{
    https://charls.charlsdata.com/pages/Data/2015-charls-wave4/zh-cn.html
}
\references{
    Ren, P., Liu, X., Zhang, X., Zhan, P., & Qiu, T. (2024). Integrative analysis of high-dimensional quantile regression with contrasted penalization. Journal of Applied Statistics, 1-17.
}
\examples{
    library(glmnet)
    data(CHARLS)
    data_hebei = CHARLS$hebei
    y = data_hebei$y
    x = data_hebei[,-1]
    x = matrix(unlist(x),nrow = nrow(x))
    fit_lasso = cv.glmnet(x,y,alpha = 1)
	coef(fit_lasso,s = "lambda.min")
}