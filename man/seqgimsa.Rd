\name{seqgimsa}
\alias{seqgimsa}
\docType{data}
\title{
Sample of mothers and daughters employment histories
}
\description{
A data frame describing mothers employment histories from age 14 to 60 and daughters employment histories from the completion of education to 15 years later. Sequences are sampled (N = 400) from "Biographies et entourage" survey (INED, 2001). 
}
\usage{data("seqgimsa")}
\format{
  A data frame with 400 observations and 62 numeric variables. The first 15 variables (prefixed 'f') describe the daughters employment status a given year : 1 = education, 2 = inactivity, 3 = part-time job, 4 = full-time job. The following 47 variables (prefixed 'm') describe the mothers employment status at a given age : 1 = self-employment, 3 = higher level or intermediate occupation, 5 = lower level occupation, 8 = inactivity, 9 = education.
}

\examples{
data(seqgimsa)
str(seqgimsa)
}
\keyword{datasets}
