\name{coord_tern}
\alias{coord_tern}
\title{Ternary Coordinate System}
\usage{
coord_tern(T = getOption("tern.default.T"), L = getOption("tern.default.L"),
  R = getOption("tern.default.R"), xlim = c(0, 1), ylim = c(0, 1),
  Tlim = NULL, Llim = NULL, Rlim = NULL, clockwise)
}
\arguments{
  \item{T}{the Top Mapping (default ['x', 'y' or 'z']
  stored in global option \code{'tern.default.T'})}

  \item{L}{the Left Mapping (default ['x', 'y' or 'z']
  stored in global option \code{'tern.default.L'})}

  \item{R}{the Right Mapping (default ['x', 'y' or 'z']
  stored in global option \code{'tern.default.R'})}

  \item{xlim}{the range of x in the cartesian space}

  \item{ylim}{the range of y in the cartesian space}

  \item{Tlim}{the range of T in the ternary space}

  \item{Llim}{the range of L in the ternary space}

  \item{Rlim}{the range of R in the ternary space}

  \item{clockwise}{DEPRECIATED, replaced by individual
  theme element, see \code{\link{axis.tern.clockwise}}.}
}
\value{
\code{coord_tern} returns a ternary coordinate system
object.
}
\description{
\code{coord_tern} is a function which creates a
transformation mechanism between the ternary system, and,
the cartesian system. It inherits from the fixed coordinate
system, employing fixed ratio between x and y axes once
transformed.
}
\section{Aesthetics (Required in Each Layer)}{
  \Sexpr[results=rd,stage=build]{ggtern:::rd_aesthetics("coord",
  "tern")}
}

\section{Additional Points to Note}{
  It is important to note that once the \code{coord_tern()}
  coordinate system has been applied, the base plot object
  is no longer strictly a ggplot object, rather, a ggtern
  object where several patches have been applied to
  facilitate correct plotting.

  Abovementioned limitations include the types of
  geometries which can be used (ie approved geometries), or
  modifications to required aesthetic mappings. One such
  essential patch is, for approved geometries previously
  requiring \code{x} and \code{y} coordinates, now require
  an additional \code{z} coordinate, and,
  \code{\link[ggtern]{geom_segment}} goes one step further
  in that it requires both an additional \code{z} and
  \code{zend} coordinate mappings.

  In essence, the required aesthetics are the product
  between what is required of the 'layer' and what is
  required of the 'coordinate system'.
}

