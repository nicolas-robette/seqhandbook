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

\value{
A numerical vector of stress values.
}

\references{
Piccarreta R., Lior O. (2010). Exploring sequences: a graphical tool based on multi-dimensional scaling, \emph{Journal of the Royal Statistical Society (Series A)}, Vol. 173(1), 165-184.
}

\author{Nicolas Robette}

\examples{
data(trajact)
seqact <- seqdef(trajact)
dissim <- seqdist(seqact, method="HAM")
mds <- cmdscale(dissim, k=20, eig=TRUE)
stress <- seqmds.stress(dissim, mds)
plot(stress, type='l', xlab='number of dimensions', ylab='stress')
}

\keyword{Longitudinal characteristics}
\keyword{State sequences} 
