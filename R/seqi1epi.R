seqi1epi <- function(seqdata) {
  dur <- TraMineR::seqistatd(seqdata)
  epi <- ceiling(dur/ncol(seqdata))
  return(epi)
}
