seqi1epi <- function(seqdata) {
  dur <- suppressMessages(TraMineR::seqistatd(seqdata))
  epi <- ceiling(dur/ncol(seqdata))
  colnames(epi) <- paste0("epi", alphabet(seqdata))
  return(epi)
}
