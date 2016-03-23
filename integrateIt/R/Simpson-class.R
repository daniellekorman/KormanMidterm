#' Simpson's Rule
#'
#' Object of class \code{Simpson} as created by the \code{integrateIt} function. Objects
#' of this class include \code{print} and \code{plot} methods
#'
#'
#' An object of the class `Simpson' has the following slots:
#' \itemize{
#' \item \code{x} A numerical vector of inputs to the function
#' \item \code{y} A numerical vector of function outputs
#' \item \code{a} Starting value of integration
#' \item \code{b} Ending value of integration
#' \item \code{n} Number of parabolas between a and b
#' \item \code{integral} The result of Simpson's Rule calculation
#' }
#'
#' @author Danielle Korman
#' @aliases Simpson-class initialize,Simpson-method integrateIt
#' @rdname Integral
#' @export
setClass(Class = "Simpson",
         representation=representation(
           x="vector",
           y="vector",
           a="numeric",
           b="numeric",
           n="numeric",
           integral="numeric"),
         contains = "Integral"
)
#' @export
setMethod("initialize", "Simpson",
          function(.Object, x, y, a, b, n, integral) {
            .Object@x <- x
            .Object@y <- y
            .Object@a <- a
            .Object@b <- b
            .Object@n <- n
            .Object@integral <- function(x, y, a, b, n){
              h <- (b-a)/n
             s <- (h/3)*(y[1]+ 2*sum(y[seq(2,n,by=2)]) + 4*sum(y[seq(3,n-1,by=2)])
                         + y[n+1])
            }
            value=callNextMethod()
            return(value)
          }
)

##
setAs(from="Integral", to="Simpson",
      def=function(from){
        new("Simpson",
            x=from@x,
            y=from@y,
            integral=from@integral
        )
      }
)
