#' Atomic, Weight or Custom Percentage Suffix
#' 
#' By default there are no suffixes behind the arrow label marker (the arrow up next to the ternary axes), 
#' and these functions appends to the set of arrow labels, a value to indicate the nature of the scale.
#' 
#' These are convenience wrappers to \code{labs(W="XYZ")}.
#' @seealso Convenience functions for \code{\link[=Tlab]{T, L, R, W labels}}
#' @examples
#' \donttest{
#'   plot <- ggtern(data=data.frame(THS=1,LHS=0,RHS=0),aes(x=THS,y=LHS,z=RHS)) + geom_point()
#'   plot + percent_weight()
#'   plot + percent_atomic()
#'   plot + percent_custom("Percentage")
#' }
#' @rdname suffix_arrow
#' @name   TLRWlab.suffix
#' 
NULL

#' @description \code{percent_weight} adds 'Wt. \%' to the arrow marker label as a suffix
#' @rdname suffix_arrow
#' @export
percent_weight <- function(){labs(W="Wt. '%'")}

#' @description \code{weight_percent} is an alias for \code{percent_weight()}
#' @rdname suffix_arrow
#' @export
weight_percent <- percent_weight

#' @description \code{percent_atomic} adds 'At. \%' to the arrow marker label as a suffix
#' @rdname suffix_arrow
#' @export
percent_atomic <- function(){labs(W="At. '%'")}

#' @description \code{atomic_percent} is an alias for \code{percent_atomic()}
#' @rdname suffix_arrow
#' @export
atomic_percent <- percent_atomic

#' @description \code{percent_custom} adds a custom suffix to the arrow label marker.
#' @param x the custom suffix
#' @rdname suffix_arrow
#' @export
percent_custom <- function(x){
  if(class(x) == 'character'){
    x = gsub("%","'%'",x)
    x = gsub('([[:punct:]])\\1+', '\\1', x)
  }
  labs(W=x)
}
 
#' @description \code{custom_percent} is an alias for \code{percent_custom()}
#' @rdname suffix_arrow
#' @export
custom_percent <- percent_custom


