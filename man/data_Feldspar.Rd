\docType{data}
\name{data_Feldspar}
\alias{Feldspar}
\alias{data_Feldspar}
\title{Elkin and Groves Feldspar Data}
\format{One (1) row per Feldspar composition}
\source{
American Mineralogist, June 1990, v. 75, p. 544-559
}
\usage{
data(Feldspar)
}
\description{
This dataset is some data on Feldspar and its phases, as a
function of temperature and pressure.
}
\examples{
\donttest{
 data(Feldspar)
 summary(Feldspar)
 ggtern(data=Feldspar,aes(x=An,y=Ab,z=Or)) + geom_point()
}
}
\author{
Linda T. Elkins and Timothy L. Grove
}
\seealso{
\link[=data]{ggtern datasets}
}

