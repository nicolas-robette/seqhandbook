\name{seqsmooth}
\alias{seqsmooth}

\title{Smoothing sequence data}

\description{
Smoothing of sequence data, using for each sequence the medoid of the sequences in its neighborhood. The results can be used to get a smoothed index plot.
}

\usage{
seqsmooth(seqdata, diss, k=20, r=NULL)
}

\arguments{
  \item{seqdata}{a sequence object (see \code{\link{seqdef}} function).}
  \item{diss}{a dissimilarity matrix, giving the pairwise distances between sequences.}
  \item{k}{size of the neighborhood. Default is 20.}
  \item{r}{radius of the neighborhood. If NULL (default), the radius is not used for smoothing.}
}

\value{
A list with the following elements:
\item{seqdata}{a sequence object (see \code{\link{seqdef}} function)}
\item{R2}{pseudo-R2 measure of the goodness of fit of the smoothing}
\item{S2}{stress measure of the goodness of fit of the smoothing}
}

\references{
Piccarreta R. (2012). Graphical and Smoothing Techniques for Sequence Analysis, \emph{Sociological Methods and Research}, Vol. 41(2), 362-380.
}

\author{Nicolas Robette}

\examples{
data(trajact)
seqact <- seqdef(trajact)
dissim <- seqdist(seqact, method="LCS")
mds <- cmdscale(dissim, k=1)
smoothed <- seqsmooth(seqact, dissim, k=30)$seqdata
seqIplot(smoothed, sortv=mds, xtlab=14:50, with.legend=FALSE, yaxis=FALSE, ylab=NA)
}

\keyword{Longitudinal characteristics}
\keyword{State sequences} 
