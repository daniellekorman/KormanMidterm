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
#' \item \code{n} Number of divisions to make between a and b
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
           n="numeric",
           integral="function"),
         prototype = prototype(
           x=vector(),
           y=vector(),
           a=numeric(),
           b=numeric(),
           n=numeric(),
           integral=function()
         ),
         validity = function(object){
           if(object@b < object@a){
             stop("Switch values so that b is larger than a")
           }
           if(is_integer(object@n) =FALSE || object@n < 1){
             stop("n must be a positive integer")
           }
         })
#' @export
setMethod("initialize", "Integral",
          function(.Object, x, y, a, b, n, integral) {
            .Object@x <- x
            .Object@y <- y
            .Object@a <- a
            .Object@b <- b
            .Object@n <- n
            .Object@integral <- integral
            value=callNextMethod()
            return(value)
          }
)
#' @export
setMethod("print", "Integral", function(object) {
  paste(c(object@integral))
}
)
