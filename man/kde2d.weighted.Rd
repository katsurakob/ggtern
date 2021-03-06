\name{kde2d.weighted}
\alias{kde}
\alias{kde2d.weighted}
\alias{kde2dweighted}
\title{Two-Dimentional Kernel Density Estimation (Weighted)}
\usage{
kde2d.weighted(x, y, w, h, n = 25, lims = c(range(x), range(y)))
}
\arguments{
  \item{w}{numeric value or vector of same length as x (and
  y), for weighting.}

  \item{x}{ x coordinate of data }

  \item{y}{ y coordinate of data }

  \item{h}{ vector of bandwidths for x and y directions.
  Defaults to normal reference bandwidth (see
  \code{\link{bandwidth.nrd}}). A scalar value will be
  taken to apply to both directions. }

  \item{n}{ Number of grid points in each direction.  Can
  be scalar or a length-2 integer vector. }

  \item{lims}{ The limits of the rectangle covered by the
  grid as \code{c(xl, xu, yl, yu)}. }
}
\description{
Based of an algorithm found online at
\code{https://stat.ethz.ch/pipermail/r-help/2006-June/107405.html}.
}
\seealso{
\code{\link{kde2d}}
}
\keyword{internal}

