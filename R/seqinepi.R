seqinepi <- function(seqdata) {
  z <- suppressMessages(seqdef(seqdss(seqdata),missing="%",alphabet=alphabet(seqdata)))
  nbepi <- suppressMessages(seqistatd(z))
  colnames(nbepi) <- paste0("nepi", alphabet(seqdata))
  return(nbepi)
}