#' Integral superclass
#'
#' Object of class \code{Integral} as created by the \code{integrateIt} function. Objects
#' of this class include \code{print} and \code{plot} methods.
#'
#'
#' An object of the class `Integral' has the following slots:
#' \itemize{
#' \item \code{x} A numerical vector of inputs to the function
#' \item \code{y} A numerical vector of function outputs
#' \item \code{a} Starting value of integration
#' \item \code{b} Ending value of integration
#' \item \code{integral} Either the Trapezoid or Simpson Rule area under the curve
#' }
#'
#' @author Danielle Korman
#' @aliases Integral-class initialize,Integral-method integrateIt
#' @rdname Integral
#' @export
setClass(Class = "Integral",
         representation = representation(
           x="vector",
           y="vector",
           a="numeric",
           b="numeric",
           integral="numeric"),
         prototype = prototype(
           x=vector(),
           y=vector(),
           a=numeric(),
           b=numeric(),
           integral=numeric()
         ))
