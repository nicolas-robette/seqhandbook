#periods <- c(1,4,8,12,24)

seq2qha <- function(seqdata, periods) {
  nbper <- length(periods)
  durper <- vector(length=nbper)
  nbst <- length(alphabet(seqdata))
  qha <- matrix(data=0, nrow(seqdata), nbst*nbper)
  qhanames <- vector(length=nbst*nbper)
  for (i in 1:nbper-1) durper[i] <- periods[i+1]-periods[i]
  durper[nbper] <- ncol(seqdata)-periods[nbper]+1
  for (i in 1:nbper) {
    temp <- seqdata[,periods[i]:(periods[i]+durper[i]-1)]
    for (j in 1:nbst) {
      qha[,nbst*(i-1)+j] <- round(rowSums(temp == j)/durper[i],3)
      qhanames[nbst*(i-1)+j] <- paste0("Per",i,"St",j)
    }
  }
  qha <- as.data.frame(qha)
  colnames(qha) <- qhanames
  return(qha)
}