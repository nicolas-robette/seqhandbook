seqifpos <- function(seqdata) {
  nbst <- length(alphabet(seqdata))
  fpos <- matrix(0, nrow(seqdata), nbst)
  for (i in 1:nbst) fpos[,i] <- seqfpos(seqdata, alphabet(seqdata)[i])
  #fpos[is.na(fpos)] <- 999
  colnames(fpos) <- paste0("fpos", alphabet(seqdata))
  fpos <- as.data.frame(fpos)
  return(fpos)
}