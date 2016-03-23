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
#' \item \code{n} Number of trapezoids between a and b
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
           n="numeric",
           integral="function"),
         contains = "Integral"
)
#' @export
setMethod("initialize", "Trapezoid",
          function(.Object, x, y, a, b, n, integral) {
            .Object@x <- x
            .Object@y <- y
            .Object@a <- a
            .Object@b <- b
            .Object@n <- n
            .Object@integral <- function(object){
              h <- (object@b-object@a)/object@n
              t <- (h/2) * (object@y[1] + 2*sum(object@y[2:object@n]) + object@y[object@n+1])
              return(t) }
            value=callNextMethod()
            return(value)
          }
)
##
setAs(from="Integral", to="Trapezoid",
      def=function(from){
        new("Trapezoid",
            x=from@x,
            y=from@y,
            integral=from@integral
        )
      }
)
