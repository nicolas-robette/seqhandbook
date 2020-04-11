assoc.domains <- function(dlist, names, djsa) {
  
  dlist2 <- lapply(dlist, function(x) as.numeric(as.dist(x)))
  djsa2 <- as.numeric(as.dist(djsa))
  df <- cbind(as.data.frame(dlist2),djsa2)
  names(df) <- c(names,'jsa')

  res1 <- list(pearson=round(cor(df, method='pearson'),3), spearman=round(cor(df, method='spearman'),3))
  
  res2 <- list(pearson=round(sum(sapply(dlist2, function(x) cor(x,djsa2,method='pearson')^2))/length(dlist),3),
               spearman=round(sum(sapply(dlist2, function(x) cor(x,djsa2,method='spearman')^2))/length(dlist),3))
  
  P <- length(dlist)
  sigmatot <- var(rowSums(sapply(dlist2, scale)))
  cron <- round((P/(P-1))*(1-P/sigmatot),3)
  
  res3 <- list(cron)
  names(res3)[length(res3)] <- paste0('(',paste0(names,collapse=','),')')
  
  for(p in (P-1):2) {
    comb <- combn(1:P, p, simplify=FALSE)
    for(i in 1:length(comb)) {
      sigmatot <- var(rowSums(sapply(dlist2[comb[[i]]], scale)))
      cron <- round((p/(p-1))*(1-p/sigmatot),3)
      res3 <- c(res3,cron)
      names(res3)[length(res3)] <- paste0('(',paste0(names[comb[[i]]],collapse=','),')')
    }
  }
  
  res <- list(res1, res2, res3)
  names(res) <- c('correlations','mean squared correlations',"Cronbach's alpha")
  
  return(res)
}