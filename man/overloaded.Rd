\name{zzz-overloaded}
\alias{\%+\%}
\alias{\%+replace\%}
\alias{add_ggplot}
\alias{add_theme}
\alias{calc_element}
\alias{calculate_stats}
\alias{check_required_aesthetics}
\alias{combine_elements}
\alias{opts}
\alias{panel_scales}
\alias{plot_theme}
\alias{theme_get}
\alias{theme_set}
\alias{theme_update}
\alias{train_ranges}
\alias{update_theme}
\alias{validate_element}
\alias{zzz-overloaded}
\title{Overloaded ggplot2 functions}
\format{functions and objects}
\usage{
panel_scales(panel, i)

calculate_stats(panel, data, layers)

train_ranges(panel, coord)

e1 \%+\% e2

add_ggplot(p, object, objectname)

validate_element(el, elname)

theme_update(...)

opts(...)

plot_theme(x)

theme_get()

theme_set(new)

add_theme(t1, t2, t2name)

e1 \%+replace\% e2

update_theme(oldtheme, newtheme)

calc_element(element, theme, verbose = FALSE)

combine_elements(e1, e2)

check_required_aesthetics(required, present, name)
}
\arguments{
  \item{panel}{the particular panel}

  \item{i}{index number}

  \item{layers}{list of layers}

  \item{data}{a list of data frames (one for each layer)}

  \item{p}{plot}

  \item{object}{to add}

  \item{objectname}{name of obeject}

  \item{el}{the element}

  \item{elname}{the element name}

  \item{...}{Arguments to be passed on to the \code{theme}
  function.}

  \item{x}{gg object}

  \item{oldtheme}{previous theme object}

  \item{newtheme}{new theme object}

  \item{e1}{first element}

  \item{e2}{second element}

  \item{character}{vector of required aesthetics}

  \item{character}{vector of present aesthetics}

  \item{name}{of object for error message}

  \item{new}{new theme (a list of theme elements)}

  \item{t1}{A theme object}

  \item{t2}{A theme object that is to be added to
  \code{t1}}

  \item{t2name}{A name of the t2 object. This is used for
  printing informative error messages.}

  \item{element}{The name of the theme element to
  calculate}

  \item{theme}{A theme object (like theme_grey())}

  \item{verbose}{If TRUE, print out which elements this one
  inherits from}
}
\description{
INTERNAL FUNCTIONS (Overloaded from ggplot2): The source of
the following functions originate from ggplot2, however,
minor patches were required in order for them to function
under the ggtern framework. Patches were mainly to do with
handling the new theme elements and heirarchies.

\code{panel_scales} is a local copy of the ggplot2 function
that calculates the scales for each panel, patched for the
ternary system.

\code{calculate_stats} is a local copy of the ggplot2
function that calculates various stats for each layer.

\code{train_ranges} is a local copy of the ggplot2 function
that computes ranges and dimensions of each panel, using
the coord, and patched for the ternary system.

\code{"\%+\%"} is a local copy of the ggplot2 add operator,
no change other than exporting from the ggtern namespace

\code{add_ggplot} is a local copy of the ggplot2 method
that adds elements to an existing gg object.

\code{validate_element} is a local copy of the ggplot2
function which checks the validity of a given theme element
against the elements table. Since the \code{.elements_tree}
is an internal function, which is not exported, and
modifications could not be made, a new (and equivalent)
\code{.element_tree} is created within ggtern to handle the
new theme elements created within this package.

\code{opts} is deprecated. See the \code{\link{theme}}
function.

\code{plot_theme} is a local copy of the method that
determines the net theme between a plot and the current
global theme.

\code{add_theme} is a local copy of the ggplot2 function
which modifies the current theme, by a proposed theme. It
is slightly modified to handle 'logical' values the same
way it handles 'character' or 'numeric' values, which do
not inherit from 'element' objects.

\code{"\%+replace\%"} is a local copy of the ggplot2
replace operator, no different other than being exported
from the ggtern namespace.

\code{update_theme} is a local copy of a ggplot2 function,
which copies elements from the new theme into an old theme.

\code{calc_element} is a local copy of the ggplot2 function
which determines the net element based on inheritances,
given input theme.

\code{combine_elements} is a local copy of the ggplot2
function that combines two theme elements

\code{check_required_aesthetics} is a local copy of the
ggplot2 function that checks if the required aesthetics are
present. This is used by geoms and stats to give a more
helpful error message when required aesthetics are missing.
}
\seealso{
\code{\link[ggplot2]{theme_update}}

\code{\link[ggplot2]{opts}}

\code{\link[ggplot2]{add_theme}}
}
\keyword{internal}

