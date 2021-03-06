\name{ggtern.multi}
\alias{ggtern.multi}
\alias{multi}
\alias{multiplot}
\title{Arrange Multiple Plot Objects}
\source{
http://www.cookbook-r.com/Graphs/Multiple_graphs_on_one_page_(ggplot2)/
}
\usage{
ggtern.multi(..., plotlist = NULL, cols = 1, layout = NULL)
}
\arguments{
  \item{...}{multiple plot objects}

  \item{plotlist}{alternative to the ... argument, provide
  a list of ggplot or grob objects, objects which do not
  inherit the ggplot or grob classes will be stripped.}

  \item{cols}{number of columns if the layout parameter is
  not provided.}

  \item{layout}{override number of cols, and provide a
  matrix specifying the layout}
}
\description{
\code{ggtern.multi} is a function which permits the
arrangement of muliple \code{ggtern} or \code{ggplot2}
objects, plots can be provided to the elipsis argument, or,
as a list and at the simplest case, the number of columns
can be specified. For more advanced usage, consider the
layout argument.
}
\details{
By default, 1 column is specified, which means that the
plots will be stacked on top of each other in a single
column, however, if say 4 plots are provided to the
ellipsis or \code{plotlist}, with \code{cols} equal to 2,
then this will produce a 2 x 2 arrangement.

In regards to the \code{layout} argument (which overrides
the \code{cols} argument), if it is something like
matrix(c(1,2,3,3), nrow=2, byrow=TRUE), then plot number 1
will go in the upper left, 2 will go in the upper right,
and 3 will go all the way across the bottom - see the last
example below.
}
\examples{
\donttest{
 data(Feldspar)
 p <- ggtern(data=Feldspar,aes(Ab,An,Or)) + geom_point() + labs(title="Multiple Plot Example")

 #two rows
 ggtern.multi(p,p)

 #two cols
 ggtern.multi(p,p,cols=2)

 #using plotlist
 ggtern.multi(plotlist=list(p,p,p))

 #using matrix 1 on top, 2 on bottom
 ggtern.multi(p,p,p,layout=matrix(c(1,1,2,3), nrow=2,byrow=TRUE))
 #using matrix 2 on top, 1 on bottom
 ggtern.multi(p,p,p,layout=matrix(c(1,2,3,3), nrow=2,byrow=TRUE))
}
}

