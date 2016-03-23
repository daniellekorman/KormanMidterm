#' Create an instance of class Integral
#'
#' Takes function information and integrates either using Trapezoid or Simpson's Rule
#'
#' @param fun The function to apply to x
#' @param x A numeric vector of values
#' @param a Start value of integration
#' @param b End value of integration
#' @param Rule chooses Trap or Simp depending on rule to apply
#' @param n number of trapezoids or parabolas to use in integration
#'
#' @return An object of class Integral containing
#'  \item{x}{x values}
#'  \item{y}{y values}
#'  \item{integral}{The area calculated depending on rule used}
#' @author Danielle Korman
#' @note ??
#' @examples
#'
#' fun <- cos(x)
#' x <- c(1:100)
#' integrateIt(fun, x, a=5, b=10, Rule="Trap", n=6)
#' @rdname integrateIt
#' @aliases integrateIt,ANY-method
#' @export
# set the generic method for integrateIt
setGeneric(name="integrateIt",
           def=function(fun, x, a, b, Rule, n)
           {standardGeneric("integrateIt")}
)

#' @export
# creates method integrateIt
setMethod(f="integrateIt",
          definition=function(fun, x, a, b, Rule, n) {
            y <- fun(x)
            if(Rule=="Trap"){
              return(new("Trapezoid"))
            }
            if(Rule=="Simp"){
              return(new("Simp"))
            }
            else(print("This is not one of the two integration rules"))
)
