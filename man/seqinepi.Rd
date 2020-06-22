\name{seqinepi}
\alias{seqinepi}

\title{
Number of episodes in each state
}
\description{
  Returns the number of episodes in the states.
  }
  
\usage{
seqinepi(seqdata)
}

\arguments{
  \item{seqdata}{a sequence object (see \code{\link{seqdef}} function).}
}

\references{
Gabadinho, A., G. Ritschard, N. S. Müller and M. Studer (2011). Analyzing and Visualizing State Sequences in R with TraMineR. \emph{Journal of Statistical Software} \bold{40}(4), 1-37.
}

\author{Nicolas Robette}

\seealso{
\code{\link{seqistatd}}, \code{\link{seqi1epi}}, \code{\link{seqifpos}}
}

\examples{
data(trajact)
seqact <- seqdef(trajact)
stat <- seqinepi(seqact)
head(stat)
}

\keyword{Longitudinal characteristics}
\keyword{State sequences} 
