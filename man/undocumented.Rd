\docType{data}
\name{zzz-internal}
\alias{Geom}
\alias{Statnew}
\alias{arrow_label_formatter}
\alias{calc_element_plot}
\alias{find_global}
\alias{get_last_coord}
\alias{get_tern_extremes}
\alias{ggint}
\alias{ifthenelse}
\alias{internal}
\alias{is.numericor}
\alias{rd_aesthetics}
\alias{rd_theme}
\alias{remove_outside}
\alias{set_last_coord}
\alias{undocumented}
\alias{zzz-internal}
\title{Internal Functions}
\format{functions and objects}
\usage{
Geom

ggint

get_last_coord()

set_last_coord(new)

Statnew

rd_aesthetics(type, name)

rd_theme()

ifthenelse(x, a, b)

is.numericor(A, B)

get_tern_extremes(coordinates, verbose = F, expand = 0)

arrow_label_formatter(label, suffix = "", ..., sep = "/")

calc_element_plot(element, theme = theme_update(), ..., plot = NULL,
  verbose = F)

find_global(name, env = environment())

remove_outside(data)
}
\arguments{
  \item{new}{the coordinate system to set}

  \item{type}{geom, stat or coord}

  \item{x}{logical input to check}

  \item{a}{value to return if \code{x} is TRUE}

  \item{b}{value to return if \code{x} is FALSE}

  \item{A}{value to return if \code{A} is numeric}

  \item{B}{value to return if \code{A} is NOT numeric}

  \item{coordinates}{ggtern coordinate system, inheriting
  "ternary" and "coord" classes.}

  \item{verbose}{logical indicating verbose reporting to
  console}

  \item{expand}{numeric do define the max and min
  acceptable limits above and below the intended range.}

  \item{label}{character label}

  \item{suffix}{chacater suffix behind each label}

  \item{sep}{the seperator between label and suffix}

  \item{element}{the element name to calculate}

  \item{theme}{the theme to inherit from}

  \item{plot}{the plot to check locally for theme element,
  NULL is ok.}

  \item{...}{not used}

  \item{name}{character name of object to search for}

  \item{env}{environment to search within as first
  priority}

  \item{data}{data.frame}
}
\description{
INTERNAL FUNCTIONS (native to \code{ggtern}): \code{ggtern}
makes use of several non-exported internal functions, a
list of the internal functions are as follows:

\code{Geom} is a local copy of the ggplot2 Gom top-level
proto

\code{ggint} is a structure which holds all the required
internal functions from the ggplot2 namespace, which can
then be used conveniently via \code{ggint$ABC}.

\code{get_last_coord} is a function that returns the last
coordinate system used.

\code{set_last_coord} set the last coordinate system.

\code{Statnew} is a local copy of the ggplot2 Stat
top-level proto

\code{rd_aesthetics} is a helper function for documenting
aesthetics in R help files.

\code{rd_theme} is a helper function for documenting
theme_elements in R help files.

\code{ifthenelse} function takes input arguments \code{x},
\code{a} and \code{b} and returns \code{a} if \code{x} is
\code{TRUE}, else, returns \code{b}

\code{is.numericor} function takes input arguments \code{A}
and \code{B} and returns \code{A} if \code{A} is numeric,
else, returns \code{B}

\code{get_tern_extremes} determines the limiting ternary
coordinates given input coordinates.

\code{arrow_label_formatter} is a function that formats the
labels directly adjacent to the ternary arrows.

\code{calc_element_plot} Calculates the element properties,
by inheriting properties from its parents, and compares to
whether the local plot overrides this value. Based largely
off the calc_element function as provided in ggplot2

\code{find_global} is a function that conducts a named
search for the \code{name} object instance, within the
\code{env} environment. If an instance doesn't exist within
the \code{env} environment, a search is then conducted
within the \code{ggtern} and \code{ggplot2} namespaces
\emph{(in that order)}. This is a modified version of the
original source as provided in \code{ggplot2}, which has
the same functionality, however, the modification is such
that the function now additionally searches within the
\code{ggtern} namespace prior to the \code{ggplot2}
namespace.

\code{remove_outside} is a function that removes, from an
input datases, all the rows wich are outside the ternary
plot area
}
\keyword{datasets}
\keyword{internal}

