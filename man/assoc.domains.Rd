\name{assoc.domains}
\alias{assoc.domains}

\title{Association measures between domains in multidimensional sequence analysis}

\description{
Computes various measures of association between dimensions of multidimensional sequence data.
}

\usage{
assoc.domains(dlist, names, djsa)
}

\arguments{
  \item{dlist}{A list of dissimilarity matrices or dist objects (see \code{\link{dist}}), with one element per dimension of the multidimensional sequence data}
  \item{names}{A character vector of the names of the dimensions of the multidimensional sequence data}
  \item{djsa}{A dissimilarity matrix or a dist object (see \code{\link{dist}}), corresponding to the distances between the multimdimensional sequences}
}

\references{
Piccarreta R. (2017). Joint Sequence Analysis: Association and Clustering, \emph{Sociological Methods and Research}, Vol. 46(2), 252-287.
}

\author{Nicolas Robette}

\examples{
\donttest{
library(TraMineR)
data(biofam)

## Building one channel per type of event (left, children or married)
bf <- as.matrix(biofam[, 10:25])
children <-  bf==4 | bf==5 | bf==6
married <- bf == 2 | bf== 3 | bf==6
left <- bf==1 | bf==3 | bf==5 | bf==6

## Building sequence objects
child.seq <- seqdef(children)
marr.seq <- seqdef(married)
left.seq <- seqdef(left)

## Using Hamming distance
mcdist <- seqdistmc(channels=list(child.seq, marr.seq, left.seq),
 	method="HAM")
child.dist <- seqdist(child.seq, method="HAM")
marr.dist <- seqdist(marr.seq, method="HAM")
left.dist <- seqdist(left.seq, method="HAM")

## Association between domains
asso <- assoc.domains(list(child.dist,marr.dist,left.dist), c('child','marr','left'), mcdist)
asso
}
}

\keyword{Longitudinal characteristics}
\keyword{State sequences} 
