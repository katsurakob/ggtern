\name{point.in.sequence}
\alias{point.in.sequence}
\title{Put Points in Sequence}
\usage{
point.in.sequence(x, y, ..., df = data.frame(x = x, y = y), close = FALSE)
}
\arguments{
  \item{x}{vector of numeric \code{x} values}

  \item{y}{vector of numeric \code{y} values}

  \item{...}{not used}

  \item{df}{data.frame containing colums \code{x} and
  \code{y}}

  \item{close}{logical value (default \code{FALSE}), as to
  whether the set should be closed by adding (duplicating)
  the first row (after ordering) to the end of the set.}
}
\value{
\code{data.frame} object containing the re-ordered input
set.
}
\description{
The \code{point.in.sequence} function takes numeric input
vectors \code{x} and \code{y} or a \code{\link{data.frame}}
object, and orders the values in such way that they are
correctly sequenced by the angle subtended between each
point, and, the centroid of the total set. If the data is
provided in the format of a \code{data.frame}, then it must
containing columns named \code{x} and \code{y}, else an
error will be thrown.
}
\details{
The arguments \code{x} and \code{y} represent cartesian
coordinates. This is useful if a path is sought that passes
through each point in the ordered set, however, no two
lines in the total path cross over each other. Uses the
\code{\link{atan2}} function to determine the angle (theta)
between each point (x,y) and the centroid of the data, it
then orders based on increasing values of theta.
}
\examples{
\donttest{
 #Load plotting library
 library(ggplot2)

 #For reproducability
 set.seed(1)

 #Build data in an approximate loop
 theta <- seq(0,2*pi,by=pi/100)
 r <- 1 + (runif(length(theta))-0.5)/5
 df2 <- data.frame(x=r*cos(theta),y=r*sin(theta))

 #Randomise the order of the data
 df2 <- df2[sample(nrow(df2)),]

 #Function to plot data
 demo <- function(ret){
   ggplot(data=ret,aes(x,y)) +
     geom_path() +
     geom_point(fill="yellow",color="black",shape=21)
 }

 #Demonstrate how the data would plot WITHOUT sorting
 demo(df2)

 #Demonstrate how the data would plot WITH sorting
 demo(point.in.sequence(df=df2,close=TRUE))
}
}

