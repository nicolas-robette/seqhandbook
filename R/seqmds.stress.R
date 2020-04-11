seqmds.stress <- function(seqdist,mds) {
  datadist <- as.dist(seqdist)
  res <- numeric(length=ncol(mds$points))
  for(i in 1:ncol(mds$points)) {
    fitteddist <- dist(mds$points[,1:i],diag=TRUE,upper=TRUE)
    res[i] <- sqrt(sum((datadist-fitteddist)^2)/sum(datadist^2))
  }
  return(res)
}