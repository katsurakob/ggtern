\name{theme_elements}
\alias{axis.tern}
\alias{axis.tern.arrow}
\alias{axis.tern.arrow.L}
\alias{axis.tern.arrow.R}
\alias{axis.tern.arrow.T}
\alias{axis.tern.arrow.text}
\alias{axis.tern.arrow.text.L}
\alias{axis.tern.arrow.text.R}
\alias{axis.tern.arrow.text.T}
\alias{axis.tern.arrowfinish}
\alias{axis.tern.arrowsep}
\alias{axis.tern.arrowstart}
\alias{axis.tern.clockwise}
\alias{axis.tern.hshift}
\alias{axis.tern.line}
\alias{axis.tern.line.L}
\alias{axis.tern.line.R}
\alias{axis.tern.line.T}
\alias{axis.tern.padding}
\alias{axis.tern.showarrows}
\alias{axis.tern.showgrid.major}
\alias{axis.tern.showgrid.minor}
\alias{axis.tern.showlabels}
\alias{axis.tern.showtitles}
\alias{axis.tern.text}
\alias{axis.tern.text.L}
\alias{axis.tern.text.R}
\alias{axis.tern.text.T}
\alias{axis.tern.ticklength.major}
\alias{axis.tern.ticklength.minor}
\alias{axis.tern.ticks}
\alias{axis.tern.ticks.major}
\alias{axis.tern.ticks.major.L}
\alias{axis.tern.ticks.major.R}
\alias{axis.tern.ticks.major.T}
\alias{axis.tern.ticks.minor}
\alias{axis.tern.ticks.minor.L}
\alias{axis.tern.ticks.minor.R}
\alias{axis.tern.ticks.minor.T}
\alias{axis.tern.ticks.outside}
\alias{axis.tern.ticks.showprimary}
\alias{axis.tern.ticks.showsecondary}
\alias{axis.tern.title}
\alias{axis.tern.title.L}
\alias{axis.tern.title.R}
\alias{axis.tern.title.T}
\alias{axis.tern.vshift}
\alias{elements}
\alias{newelements}
\alias{newtheme}
\alias{newthemes}
\alias{panel.background.tern}
\alias{panel.grid.tern}
\alias{panel.grid.tern.major}
\alias{panel.grid.tern.major.L}
\alias{panel.grid.tern.major.R}
\alias{panel.grid.tern.major.T}
\alias{panel.grid.tern.minor}
\alias{panel.grid.tern.minor.L}
\alias{panel.grid.tern.minor.R}
\alias{panel.grid.tern.minor.T}
\alias{ternary.options}
\alias{theme}
\alias{theme-tern}
\alias{theme_elements}
\alias{themeelements}
\title{New Theme Elements}
\usage{
theme(..., complete = FALSE)
}
\arguments{
  \item{...}{a list of element name, element pairings that
  modify the existing theme.}

  \item{complete}{set this to TRUE if this is a complete
  theme, such as the one returned \code{by theme_grey()}.
  Complete themes behave differently when added to a ggplot
  object.}
}
\description{
\code{ggtern} creates many new theme elements and
inheritances, the following is an outline:
}
\details{
Theme elements can inherit properties from other theme
elements. For example, \code{axis.title.x} inherits from
\code{axis.title}, which in turn inherits from \code{text}.
All text elements inherit directly or indirectly from
\code{text}; all lines inherit from \code{line}, and all
rectangular objects inherit from \code{rect}.

Modifying the newly created items requires the same
procedures as introduced in the ggplot2
\code{\link[ggplot2]{theme}} documentation. Some
convenience functions have been also newly created, proceed
to \code{\link{convenience}} for additional information.
}
\section{New/Additional Inheritance Structures}{
  \Sexpr[results=rd,stage=build]{ggtern:::rd_theme()} **
  \strong{NB:} \code{panel.background.tern}, whilst the
  ternary area is 'triangular' per-se,
  \code{\link{element_rect}} has been used, as it actually
  holds NO information regarding the geometry (width,
  height), only fill, color, size and linetype border (ie
  the style of how it will be rendered). *** \strong{NB:}
  \code{ternary.options} has been fully Depreciated since
  \code{ggtern} version 1.0.1.3
}

