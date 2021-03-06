\name{theme_showtitles}
\alias{theme_hidetitles}
\alias{theme_notitles}
\alias{theme_showtitles}
\title{Show or Hide the Axis (Apex) Titles}
\usage{
theme_showtitles()

theme_hidetitles()

theme_notitles()
}
\description{
Convenience functions to SHOW or HIDE the apex labels.

\code{theme_showtitles} is a function that apends to the
current theme a flag to switch ON the apex titles.

\code{theme_hidetitles} or \code{theme_notitles} (alias) is
a function that apends to the current theme a flag to
switch OFF the apex titles.
}
\examples{
\donttest{
 #Load data
 data(Feldspar)

 #Hide the titles
 plot <- ggtern(data=Feldspar,aes(An,Ab,Or)) + geom_point() + theme_bw() + theme_hidetitles()
 plot

 #Show the titles
 plot + theme_showtitles()
}
}

