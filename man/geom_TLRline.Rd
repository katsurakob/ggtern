\name{Tline}
\alias{GeomLline}
\alias{GeomRline}
\alias{GeomTline}
\alias{Lline}
\alias{Rline}
\alias{StatLline}
\alias{StatRline}
\alias{StatTline}
\alias{Tline}
\alias{geom_Lline}
\alias{geom_Rline}
\alias{geom_TLRline}
\alias{geom_Tline}
\alias{lline}
\alias{rline}
\alias{stat_Lline}
\alias{stat_Rline}
\alias{stat_Tline}
\alias{tline}
\title{Add constant lines}
\usage{
Tline(Tintercept = NULL, ...)

Lline(Lintercept = NULL, ...)

Rline(Rintercept = NULL, ...)

geom_Lline(mapping = NULL, data = NULL, stat = "Lline",
  position = "identity", show_guide = FALSE, ...)

geom_Rline(mapping = NULL, data = NULL, stat = "Rline",
  position = "identity", show_guide = FALSE, ...)

geom_Tline(mapping = NULL, data = NULL, stat = "Tline",
  position = "identity", show_guide = FALSE, ...)

stat_Lline(mapping = NULL, data = NULL, geom = "Lline",
  position = "identity", Lintercept, ...)

stat_Rline(mapping = NULL, data = NULL, geom = "Rline",
  position = "identity", Rintercept, ...)

stat_Tline(mapping = NULL, data = NULL, geom = "Tline",
  position = "identity", Tintercept, ...)
}
\arguments{
  \item{Tintercept}{for geom_Tline and stat_Tline, the
  constant value of the THS apex constituent.}

  \item{Lintercept}{for geom_Lline and stat_Lline, the
  constant value of the LHS apex constituent.}

  \item{Rintercept}{for geom_Rline and stat_Rline, the
  constant value of the RHS apex constituent.}

  \item{...}{other arguments passed on to
  \code{\link{layer}}. This can include aesthetics whose
  values you want to set, not map. See \code{\link{layer}}
  for more details.}

  \item{mapping}{The aesthetic mapping, usually constructed
  with \code{\link{aes}} or \code{\link{aes_string}}. Only
  needs to be set at the layer level if you are overriding
  the plot defaults.}

  \item{data}{A layer specific dataset - only needed if you
  want to override the plot defaults.}

  \item{stat}{The statistical transformation to use on the
  data for this layer.}

  \item{position}{The position adjustment to use for
  overlapping points on this layer}

  \item{show_guide}{should a legend be drawn? (defaults to
  \code{FALSE})}

  \item{geom}{The geometric object to use display the data}
}
\description{
In ggplot2, one can add horizontal and vertical lines via
the \code{\link{geom_hline}} and \code{\link{geom_vline}}
prototypes, and these are the analogue in the ternary
space, however, they are not 'horizontal' or 'vertical' as
such, rather, lines for constant values of one of the three
species.
}
\section{Tline, Lline and Rline}{
  Convenience functions, \code{Tline(...), Lline(...)} and
  \code{Rline(...)} (or the aliasses \code{tline(...),
  lline(...)} and \code{rline(...)}, respectively) have
  been created so that constant lines can be quickly
  created:
}

\section{Aesthetics}{
  \Sexpr[results=rd,stage=build]{ggtern:::rd_aesthetics("geom",
  "Tline")}
  \Sexpr[results=rd,stage=build]{ggtern:::rd_aesthetics("geom",
  "Lline")}
  \Sexpr[results=rd,stage=build]{ggtern:::rd_aesthetics("geom",
  "Rline")}

  The statistical transformations hold the following
  aesthetic requirements:

  \Sexpr[results=rd,stage=build]{ggtern:::rd_aesthetics("stat",
  "Tline")}
  \Sexpr[results=rd,stage=build]{ggtern:::rd_aesthetics("stat",
  "Lline")}
  \Sexpr[results=rd,stage=build]{ggtern:::rd_aesthetics("stat",
  "Rline")}
}
\examples{
\donttest{
#Base usage
ggtern()  +
 geom_Lline(Lintercept=0.5,color="red") +
 geom_Tline(Tintercept=0.5,color="green") +
 geom_Rline(Rintercept=0.5,color="blue")

#Convenience Functions
ggtern() +
 Tline(0.5,color="red") +
 Lline(0.5,color="green") +
 Rline(0.5,color="blue")
}
}

