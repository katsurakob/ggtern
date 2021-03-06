
#' \code{Statnew} is a local copy of the ggplot2 Stat top-level proto
#' @rdname undocumented
Statnew <- proto(ggint$TopLevel, expr={
  objname <- "" 
  desc <- ""
  
  # Should the values produced by the statistic also be transformed
  # in the second pass when recently added statistics are trained to 
  # the scales
  retransform <- TRUE
  
  default_geom <- function(.) Geom
  default_aes <- function(.) aes()
  default_pos <- function(.) .$default_geom()$default_pos()
  required_aes <- c()
  
  aesthetics <- list()
  calculate <- function(., data, scales, ...) {}
  calculate_groups <- function(., data, scales, ...) {
    if (empty(data)) return(data.frame())
    
    force(data)
    force(scales)
    
    groups <- split(data, data$group)
    stats <- lapply(groups, function(group) 
      .$calculate(data = group, scales = scales, ...))
    
    stats <- mapply(function(new, old) {
      if (empty(new)) return(data.frame())
      unique <- uniquecols(old)
      missing <- !(names(unique) %in% names(new))
      cbind(
        new, 
        unique[rep(1, nrow(new)), missing,drop=FALSE]
      )
    }, stats, groups, SIMPLIFY=FALSE)
    
    do.call(rbind.fill, stats)
  }
  
  
  pprint <- function(., newline=TRUE) {
    cat("stat_", .$objname ,": ", sep="") # , clist(.$parameters())
    if (newline) cat("\n")
  }
  
  parameters <- function(.) {
    params <- formals(get("calculate", .))
    params[setdiff(names(params), c(".","data","scales"))]
  }
  
  class <- function(.) "stat"
  
  new <- function(., mapping=aes(), data=NULL, geom=NULL, position=NULL, ...){
    do.call("layer", list(mapping=mapping, data=data, geom=geom, stat=., position=position, ...))
  }
})
