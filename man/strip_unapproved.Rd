\name{strip_unapproved}
\alias{strip_unapproved}
\title{Strip Unapproved Layers}
\usage{
strip_unapproved(layers)
}
\arguments{
  \item{layers}{list of the layers to strip unnaproved
  layers from.}
}
\value{
\code{strip_unapproved} returns a list of approved layers
(may be empty if none are approved).
}
\description{
\code{strip_unapproved} is an internal function which
essentially 'deletes' layers from the current ternary plot
in the event that such layers are not one of the approved
layers. Refer to \link{approved_geometries} for the current
list of approved geometries.
}
\seealso{
\code{\link{approved_geometries}}
}
\keyword{internal}

