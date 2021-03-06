\name{ternary_transformations}
\alias{ternary_transformations}
\alias{transform_cart_to_tern}
\alias{transform_tern_to_cart}
\alias{trytransform}
\title{Ternary Transformations}
\usage{
transform_tern_to_cart(T, L, R, data = data.frame(T = T, L = L, R = R), ...,
  Tlim = c(0, 1), Llim = c(0, 1), Rlim = c(0, 1), scale = TRUE)

trytransform(data, coord)
}
\arguments{
  \item{T}{the concentrations of the \strong{Top} species
  on the ternary diagram}

  \item{L}{the concentrations of the \strong{Left} species
  on the ternary diagram}

  \item{R}{the concentrations of the \strong{Right} species
  on the ternary diagram}

  \item{data}{object of type \code{data.frame} containing
  columns \code{T}, \code{L} and \code{R}. If not specified
  (Default), it will be produced from the \code{T},
  \code{L} and \code{R} parameters for use in the
  function.}

  \item{scale}{logical indicating whether the
  concentrations should be scaled to sum to unity.}

  \item{...}{not used}

  \item{Tlim}{the limits of the top axis}

  \item{Llim}{the limits of the left axis}

  \item{Rlim}{the limits of the right axis}

  \item{data}{the dataset}

  \item{coord}{the coordinates}
}
\value{
\code{transform_tern_to_cart} returns a \code{data.frame}
object with columns \code{x} and \code{y} representing the
transformed coordinates, and, number of rows equal to that
of the \code{data} argument. In other words, a '1 to 1'
transformation from the ternary to the cartesian space.

\code{trytransform} returns a \code{data.frame} object
regardless of the success of the function operation.
}
\description{
Functions relating to the transformation from the ternary
coordinate systems, to the cartesian coordinate system.
}
\section{Transform Ternary Coordinates to Cartesian Coordinates}{
  \code{transform_tern_to_cart(...)} is a function that
  takes input numeric vectors for the \code{T}, \code{L}
  and \code{R} species, or, alternatively, a data.frame
  with columns \code{T}, \code{L} and \code{R} (Mandatory
  Column Names), and, transforms the data from the ternary
  space, to the cartesian space where \code{x} and \code{y}
  are in the range \code{[0,1]} and [0,\eqn{sin(\pi/3)}]
  respectively. The limits for \code{T}, \code{L} and
  \code{R} \strong{MAY NOT NECESSARILY} be in the range
  \code{[0,1]}, however, this is the default range.

  Since the constituents of each ternary points must sum to
  \code{1.0}, the user has the option to scale the data so
  that this is satisfied. Negative values \emph{may} be of
  interest when trying to determine the coordinates of a
  point 'outside' of the ternary plot surface, however,
  they must still sum to unity.

  Custom Limits can be applied for \code{T}, \code{L} and
  \code{R} species (by the parameters \code{Tlim},
  \code{Llim} and \code{Rlim}, respectively), however, if
  they are non-standard (ie [0,1]), then checks are made so
  that non-sensical results are not implied and, an error
  will be thrown if such non-sensical results exist, IE,
  All points \strong{MUST} sum to unity given that the axis
  extremes should meet at the vertices of the plot area.

  By the above statement, the following constraints must
  hold \code{TRUE}: \enumerate{ \item{\strong{max(Tlim)} +
  \code{min(Llim) + min(Rlim) = 1} AND}
  \item{\code{min(Tlim)} + \strong{max(Llim)} +
  \code{min(Rlim) = 1} AND} \item{\code{min(Tlim) +
  min(Llim)} + \strong{max(Rlim)} = 1} }
}

\section{Attempt Transformation from Ternary to Cartesian Coordinates}{
  \code{trytransform} is an internal function which
  attempts to make ternary transformation. If fails, the
  original data is returned.
}
\examples{
\donttest{
#Species Concentrations
T=c(1,0,0) #TOP
L=c(0,1,0) #LEFT
R=c(0,0,1) #RIGHT
#Transform
transform_tern_to_cart(T,L,R)
}
}
\keyword{internal}

