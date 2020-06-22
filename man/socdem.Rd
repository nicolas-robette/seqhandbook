\name{socdem}
\alias{socdem}
\docType{data}
\title{
Sample of sociodemographic variables
}
\description{
A data frame with sociodemographic variables for a sample of 500 interviewees from "Biographies et entourage" survey (INED, 2001).}
\usage{data("socdem")}
\format{
  A data frame with 500 observations on the following 9 variables.
  \describe{
    \item{\code{annais}}{year of birth (numeric)}
    \item{\code{nbenf}}{number of children (factor)}
    \item{\code{nbunion}}{number of relationships (factor)}
    \item{\code{mereactive}}{whether mother was active or not (factor)}
    \item{\code{sexe}}{gender (factor)}
    \item{\code{PCS}}{occupational category (factor)}
    \item{\code{PCSpere}}{occupational category of the father (factor)}
    \item{\code{diplome}}{degree (factor)}
    \item{\code{nationalite}}{nationality (factor)}
  }
}

\examples{
data(socdem)
str(socdem)
}
\keyword{datasets}
