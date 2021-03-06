.theme_ticksoutside <- function(x){theme(axis.tern.ticks.outside=x)}

#' Place Ticks Inside or Outside
#' 
#' \code{theme_ticksoutside} is a function that ensures the ticks are placed OUTSIDE of the plot area, whereas, 
#' \code{theme_ticksinside} is a function that ensures the ticks are placed INSIDE of the plot area (opposite to \code{theme_ticksoutside})
#' @rdname themeticksoutside
#' @examples
#' \donttest{
#' data(Feldspar)
#' ggtern(data=Feldspar,aes(Ab,An,Or)) + 
#'   geom_point() + 
#'   theme_bw() + 
#'   theme_nogrid() + 
#'   theme_ticksinside()
#' }
#' @export
theme_ticksoutside <- function(){.theme_ticksoutside(TRUE)}

#' @rdname themeticksoutside
#' @export
theme_ticksinside  <- function(){.theme_ticksoutside(FALSE)}