symPLS <- function(a,b) {
  k <- min(ncol(a),ncol(b),nrow(a),nrow(b))
  X <- vector("list", k)
  Y <- vector("list", k)
  X[[1]] <- scale(a,scale=FALSE)
  Y[[1]] <- scale(b,scale=FALSE)
  F <- matrix(nrow=nrow(X[[1]]), ncol=k)
  G <- matrix(nrow=nrow(X[[1]]), ncol=k)
  f <- matrix(nrow=nrow(X[[1]]), ncol=k)
  g <- matrix(nrow=nrow(X[[1]]), ncol=k)
  vF <- vector(mode="numeric", length=k)
  vG <- vector(mode="numeric", length=k)
  corr <- vector(mode="numeric", length=k)
  for(i in 1: k) {
    u <- eigen(t(X[[i]])%*%Y[[i]]%*%t(Y[[i]])%*%X[[i]])$vectors[,1]
    F[,i] <- X[[i]]%*%u
    v <- t(Y[[i]])%*%X[[i]]%*%u
    v <- v*as.vector(1/((t(v)%*%v)^0.5))
    G[,i] <- Y[[i]]%*%v
    f[,i] <- F[,i]*as.vector(1/((t(F[,i])%*%F[,i])^0.5))
    g[,i] <- G[,i]*as.vector(1/((t(G[,i])%*%G[,i])^0.5))
    X[[i+1]] <- X[[i]] - f[,i]%*%t(f[,i])%*%X[[i]]
    Y[[i+1]] <- Y[[i]] - g[,i]%*%t(g[,i])%*%Y[[i]]
    vF[i] <- var(F[,i])
    vG[i] <- var(G[,i])
    corr[i] <- cor(x=F[,i], y=G[,i], method="pearson")
  }
  res <- list(F=F,G=G,vF=vF,vG=vG,corr=corr)
  rm(k,X,Y,f,g,u,v)
  return(res)
}