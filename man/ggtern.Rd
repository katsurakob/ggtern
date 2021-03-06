\name{ggtern}
\alias{constructor}
\alias{ggtern}
\title{ggtern Constructor}
\usage{
ggtern(data = NULL, ...)
}
\arguments{
  \item{data}{default data set}

  \item{...}{other arguments passed to specific methods}
}
\value{
\code{ggtern(...)} returns an object of class
\code{ggplot}.
}
\description{
Plots in \code{ggtern} are instigated via the default
constructor: \code{ggtern(...)}, which is essentially a
convenience wrapper for the following: \code{ggplot{...} +
coord_tern()}, indeed, if one wishes to use
\code{ggplot{...} + coord_tern()} then this is quite
satisfactory.
}
\examples{
\donttest{
 data(Feldspar)
 ggtern(data=Feldspar,aes(An,Ab,Or)) + geom_point()
}
}
\seealso{
For an introduction to the \code{ggtern} package,
(including many examples), click
\link[=introduction]{HERE}.
}

