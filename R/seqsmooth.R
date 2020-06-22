seqsmooth <- function(seqdata, diss, k=20, r=NULL) {
  dtot <- diss
  rownames(dtot) <- 1:nrow(dtot)
  medoids <- numeric()
  d2medo <- numeric()
  for(i in 1:nrow(dtot)) {
    if(!is.null(k) & !is.null(r)) neighb <- which((dtot[i,] <= r) & (rank(dtot[i,], ties.method="first") <= k))
    if(is.null(k) & !is.null(r)) neighb <- which(dtot[i,] <= r)
    if(!is.null(k) & is.null(r)) neighb <- which(rank(dtot[i,], ties.method="first") <= k)
    di <- dtot[neighb,neighb]
    medoids[i] <- as.numeric(rownames(di)[which.min(rowMeans(di))[1]])
    d2medo[i] <- dtot[i,medoids[i]]
  }
  medotot <- which.min(rowMeans(dtot))[1]
  d2medotot <- dtot[medotot,]
  R2 <- 1 - sum(d2medo)/sum(d2medotot)
  dsmooth <- dtot[medoids,medoids]
  S2 <- sum((dtot-dsmooth)^2) / sum(dtot^2)
  newseq <- seqdata
  newseq <- newseq[medoids,]
  res <- list(seqdata=newseq, R2=R2, S2=S2)
  return(res)
}