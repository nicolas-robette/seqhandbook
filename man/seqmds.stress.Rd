\name{seqmds.stress}
\alias{seqmds.stress}

\title{
Stress measure of multidimensional scaling factors
}

\description{
Computes stress measure of multidimensional scaling data for different number of dimensions of the represented space
}

\usage{
seqmds.stress(seqdist, mds)
}
\arguments{
  \item{seqdist}{a dissimilarity matrix or a dist object (see \code{\link{dist}})}
  \item{mds}{a matrix with coordinates in the represented space (dimension 1 in column 1, dimension 2 in column 2, etc.)}
}

\references{
Piccarreta R., Lior O. (2010). Exploring sequences: a graphical tool based on multi-dimensional scaling, \emph{Journal of the Royal Statistical Society (Series A)}, Vol. 173(1), 165-184.
}

\author{Nicolas Robette}

\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (x) 
{
  }
}

\keyword{Longitudinal characteristics}
\keyword{State sequences} 
