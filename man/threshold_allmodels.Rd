% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/eBIC_allmodels_withlmekin_ML.r
\name{threshold_allmodels}
\alias{threshold_allmodels}
\title{Select significant marker thanks to a p-value threshold}
\usage{
threshold_allmodels(threshold=NULL, res_mlmm)
}
\arguments{
\item{threshold}{a value to declare the significant p value. The default value is Bonferroni 0.05}
\item{res_mlmm}{a list of p-value for each mlmm step. Use helper function \code{\link{mlmm_allmodels}} to get this argument.}
}
\value{
A matrix with a line for significant SNP at each mlmm step (according to the defined threshold) and 3 columns : SNP, p-value, step
}
\description{
Select significant marker at each mlmm step according to a threshold.
}
\examples{
### Additive model ###
\dontrun{
data("mlmm.gwas.AD")

XX = list(Xa)
KK = list(K.add)

# GWAS
res_mlmm <- mlmm_allmodels(floweringDateAD, XX, KK)
manhattan.plot(res_mlmm)

# Model and Marker selection
sel_XX <- frommlmm_toebic(XX, res_mlmm)
res.eBIC <- eBIC_allmodels(floweringDateAD, sel_XX, KK, ncol(Xa))
res.threshold <- threshold_allmodels(threshold, res_mlmm)

# Effects estimations with the selected model
sel_XXclass <- fromeBICtoEstimation(sel_XX, res.eBIC, res.threshold)
eff.estimations <- Estimation_allmodels(floweringDateAD, sel_XXclass, KK)
genotypes.boxplot(Xa, floweringDateAD, effects = eff.estimations)
}

### Additive + dominance model
\dontrun{
data("mlmm.gwas.AD")

XX = list(Xa, Xd)
KK = list(K.add, K.dom)

# GWAS
res_mlmm <- mlmm_allmodels(floweringDateAD, XX, KK)
manhattan.plot(res_mlmm)

# Marker selection
res.threshold <- threshold_allmodels(threshold, res_mlmm)
}


### Female+Male model
\dontrun{
data("mlmm.gwas.FMI")

XX = list(Xf, Xm)
KK = list(K.female, K.male)

# GWAS
res_mlmm <- mlmm_allmodels(floweringDateFMI, XX, KK, female = female, male = male)
manhattan.plot(res_mlmm)

# Marker selection
res.threshold <- threshold_allmodels(threshold, res_mlmm)
}



### Female+Male+Interaction model
\dontrun{
data("mlmm.gwas.FMI")

XX = list(Xf, Xm, Xfm)
KK = list(K.female, K.male, K.hybrid)

# GWAS
res_mlmm <- mlmm_allmodels(floweringDateFMI, XX, KK, female = female, male = male)
manhattan.plot(res_mlmm)

# Marker selection
res.threshold <- threshold_allmodels(threshold, res_mlmm)
}
}
