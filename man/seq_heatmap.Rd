\name{seq_heatmap}
\alias{seq_heatmap}

\title{Index plot of sequences ordered according to a dendrogram}

\usage{
seq_heatmap(seq, tree, with.missing = FALSE, ...)
}

\arguments{
\item{seq}{a state sequence object created with the \code{\link{seqdef}} function}
\item{tree}{a dendrogram of the sequences (an object of class \code{\link{hclust}}, \code{\link{dendrogram}} or \code{\link{agnes}})}
\item{with.missing}{is there a 'missing value' state in the sequences?}
\item{...}{additional parameters sent to \code{\link{heatmap}}}
}

\description{
Index plot of state sequences. Sequences are ordered according to the specified
dendrogram. The dendrogram is also plotted on the side of the index plot.
}

\source{
\url{http://joseph.larmarange.net/?Representer-un-tapis-de-sequences}
}

\seealso{
\code{\link{seqIplot}}
}

\examples{
if (require(TraMineR)) {
  data(mvad)
  mvad.seq <- seqdef(mvad[,17:86])
  mvad.lcs <- seqdist(mvad.seq, method = "LCS")
  mvad.hc <- hclust(as.dist(mvad.lcs), method = "ward.D2")
  seq_heatmap(mvad.seq, mvad.hc)
}
}
