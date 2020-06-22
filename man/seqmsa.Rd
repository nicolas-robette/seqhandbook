\name{seqmsa}
\alias{seqmsa}
\docType{data}
\title{
Sample of marital, parental and residential sequences
}
\description{
A data frame describing respectively the matrimonial, parental and residential status from age 14 to age 35. It's sampled (N=500) from "Biographies et entourage" survey (INED, 2001).
}
\usage{data("seqmsa")}
\format{
  A data frame with 500 observations and 66 variables. The first 22 variables (prefixed 'log') describe the residential status at a given age : 0 = not independent, 1 = independent. The next 22 variables (prefixed 'mat') describe the matrimonial status at a given age : 1 = never been in a relationship, 2 = cohabiting union, 3 = married, 4 = separated. The last 22 variables (prefixed 'nenf') describe the parental status at a given age : 0 = no child, 1 = one child, 2 = two children, 3 = three children or more.
}

\examples{
data(seqmsa)
str(seqmsa)
}
\keyword{datasets}
