\name{seq2qha}
\alias{seq2qha}

\title{Recoding sequences for qualitative harmonic analysis}

\description{
Recodes sequence data into the shape used for qualitative harmonic analysis.
}

\usage{
seq2qha(seqdata, periods)
}

\arguments{
  \item{seqdata}{a sequence object (see \code{\link{seqdef}} function).}
  \item{periods}{numeric vector of the first positions of the periods used for recoding}
}

\value{
A data frame with one column by combination of period and state (i.e. number of columns = number of periods * number of states in the alphabet).
}

\references{
Robette N., Thibault N. (2008). Comparing qualitative harmonic analysis and optimal matching. An exploratory study of occupational trajectories, \emph{Population-E}, Vol. 64(3), 533-556.
Deville J-C. (1982). Analyse de données chronologiques qualitatives: comment analyser des calendriers ?, \emph{Annales de l’INSEE}, 45, 45-104.
Deville J-C., Saporta G. (1980). Analyse harmonique qualitative, in \emph{Data analysis and informatics}, E.Diday (ed.), Amsterdam, North Holland Publishing, 375-389.
}

\author{Nicolas Robette}

\examples{
data(trajact)
seqact <- seqdef(trajact)
qha <- seq2qha(seqact, periods=c(1,3,7,12,24))
head(qha)
}

\keyword{Longitudinal characteristics}
\keyword{State sequences} 
