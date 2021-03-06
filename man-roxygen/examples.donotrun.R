#' @examples
#' ### Additive model ###
#' \dontrun{
#' data("mlmm.gwas.AD")
#'
#' XX = list(Xa)
#' KK = list(K.add)
#'
#' # GWAS
#' res_mlmm <- mlmm_allmodels(floweringDateAD, XX, KK)
#' manhattan.plot(res_mlmm)
#'
#' # Model selection
#' sel_XX <- frommlmm_toebic(XX, res_mlmm)
#' res.eBIC <- eBIC_allmodels(floweringDateAD, sel_XX, KK, ncol(Xa))
#'
#' # Effects estimations with the selected model
#' sel_XXclass <- fromeBICtoEstimation(sel_XX, res.eBIC)
#' eff.estimations <- Estimation_allmodels(floweringDateAD, sel_XXclass, KK)
#' genotypes.boxplot(Xa, floweringDateAD, effects = eff.estimations)
#' }
#'
#' ### Additive + dominance model
#' \dontrun{
#' data("mlmm.gwas.AD")
#'
#' XX = list(Xa, Xd)
#' KK = list(K.add, K.dom)
#'
#' # GWAS
#' res_mlmm <- mlmm_allmodels(floweringDateAD, XX, KK)
#' manhattan.plot(res_mlmm)
#'
#' # Model selection
#' sel_XX <- frommlmm_toebic(XX, res_mlmm)
#' res.eBIC <- eBIC_allmodels(floweringDateAD, sel_XX, KK, ncol(Xa))
#' #the selected model is the null model
#' }
#'
#'
#' ### Female+Male model
#' \dontrun{
#' data("mlmm.gwas.FMI")
#'
#' XX = list(Xf, Xm)
#' KK = list(K.female, K.male)
#'
#' # GWAS
#' res_mlmm <- mlmm_allmodels(floweringDateFMI, XX, KK, female = female, male = male)
#' manhattan.plot(res_mlmm)
#'
#' # Model selection
#' sel_XX <- frommlmm_toebic(XX, res_mlmm)
#' res.eBIC <- eBIC_allmodels(floweringDateFMI, sel_XX, KK, ncol(Xf), female = female, male = male)
#' #the selected model is the null model
#' }
#'
#'
#'
#' ### Female+Male+Interaction model
#' \dontrun{
#' data("mlmm.gwas.FMI")
#'
#' XX = list(Xf, Xm, Xfm)
#' KK = list(K.female, K.male, K.hybrid)
#'
#' # GWAS
#' res_mlmm <- mlmm_allmodels(floweringDateFMI, XX, KK, female = female, male = male)
#' manhattan.plot(res_mlmm)
#'
#' # Model selection
#' sel_XX <- frommlmm_toebic(XX, res_mlmm)
#' res.eBIC <- eBIC_allmodels(floweringDateFMI, sel_XX, KK, ncol(Xf), female = female, male = male)
#' #the selected model is the null model
#' }

