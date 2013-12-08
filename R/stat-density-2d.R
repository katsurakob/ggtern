stat_density2d <- function (mapping = NULL, data = NULL, geom = "density2d", position = "identity", na.rm = FALSE, contour = TRUE, n = 100, ...) {
  StatDensity2d$new(mapping = mapping, data = data,geom=geom,geometry=geom,position = position, na.rm = na.rm, contour = contour, n = n,...)
}

StatDensity2d <- proto(ggplot2:::Stat, {
  objname <- "density2d"
  
  default_geom <- function(.) GeomDensity2d
  default_aes <- function(.) aes(colour = "#3366FF", size = 0.5)
  required_aes <- c("x", "y")
  
  calculate <- function(., data, scales, na.rm = FALSE, contour = TRUE, n = 100,geometry="density2d",...) {
    #HACK FOR TERNARY
    data <- trytransform(data)
    
    df <- data.frame(data[, c("x", "y")])
    df <- remove_missing(df, na.rm, name = "stat_density2d", finite = TRUE)
    
    ##HACK... ensure goes right to edge...
    if(inherits(last_plot(),"ggtern")){
      xlim <- c(0,1); ylim <- c(0,1)
    }else{
      xlim <- scale_dimension(scales$x); ylim <- scale_dimension(scales$y)
    }
    
    dens <- safe.call(kde2d, list(x = df$x, y = df$y, n = n,lims = c(xlim,ylim), ...))
    
    df <- with(dens, data.frame(expand.grid(x = x, y = y), z = as.vector(z)))
    
    #TERNARY HACK REMOVES ITEMS IF NOT POLYGON, ELSE SETS Z to 0, 
    #for points outside ternary plot area...
    df <- sinkdensity(df,remove=!identical(geometry,"polygon"))
    
    df$group <- data$group[1]
    
    if (contour) {
      StatContour$calculate(df, scales, ...)      
    } else {
      names(df) <- c("x", "y", "density", "group")
      df$level <- 1
      df$piece <- 1
      df
    }
  }  
})