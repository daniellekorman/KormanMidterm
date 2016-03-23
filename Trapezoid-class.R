#' Trapezoidal Integration
#'
#' Object of class \code{Trapezoid} as created by the \code{integrateIt} function. Objects
#' of this class include \code{print} and \code{plot} methods
#'
#'
#' An object of the class `Trapezoid' has the following slots:
#' \itemize{
#' \item \code{x} A numerical vector of inputs to the function
#' \item \code{y} A numerical vector of function outputs
#' \item \code{a} Starting value of integration
#' \item \code{b} Ending value of integration
#' \item \code{integral} The result of Trapezoidal Rule calculation
#' }
#'
#' @author Danielle Korman
#' @aliases Trapezoid-class initialize,Trapezoid-method integrateIt
#' @rdname Integral
#' @export
setClass(Class = "Trapezoid",
         representation=representation(
           x="vector",
           y="vector",
           a="numeric",
           b="numeric",
           integral="numeric"),
         contains = "Integrate"
)
