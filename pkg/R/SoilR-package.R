#' SoilR
#'
#' @docType package
#' @name SoilR-package
#' 
#' @description
#' The package allows you to study compartmental Soil models.
#'
#' @details
#' The typical workflow consists of the following steps:
#'  \enumerate{
#'     \item{Create a model(run)}
#'     \item{Inspect it}
#'  } 
#' The simplest way of creating a model is to use one of the top level functions for predefined models: \code{\link{predefinedModels}}. 
#' The objects returned by these functions can be of different type, usually either 
#' \enumerate{
#'    \item{  \code{\linkS4class{Model}} }
#'    \item{  \code{\linkS4class{Model_14}} }.
#' }
#' To inspect the behavior of a model object these classes provide several
#' methods to be found in their respective descriptions.
#' If none of the predefined models fits your needs you can assemble your own model.
#' The functions that create it are the constructors of the above mentioned classes. 
#' By convention they have the same name as the class and are described here:
#' \enumerate{
#'    \item{  \code{\link{Model}} }
#'    \item{  \code{\link{Model_14}} }.
#' }
#' There is also a new way to describe models which could be very useful for the definition 
#' of nonlinear nonautonomous models with many pools.
#' Parts of the new infrastructure, which is still under development, are used 
#' in the source code and examples of:
#' \enumerate{
#'    \item{\code{\link{CenturyModel}}}
#'    \item{\code{\link{WangThreePoolNonAutonomous_sym}}}
#' }
NULL
