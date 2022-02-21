library(magic)
#generation of a complete grid
grid_gen_cplt <- function(){
  A= matrix (rep(NA, 81), 9, 9)
  A[1,]=sample(1:9)
  t=1:3
  for (i in 1:2){# 1:3 x 1:9
    A[i+1,]=shift(A[i,],3)
    }
  for (k in seq(0,8,3)){ # 4:9 x 1:9
    for (i in 1:2){
        A[t+3*i,t+k]=ashift(A[t,t+k],c(0,i))
    }
  }
  for (k in seq(0,8,3)){
      A[t+k,]=A[sample(t+k),] # randomizing rows
  }
  for (j in seq(0,8,3)){
      A[,t+j]=A[,sample(t+j)] # randomizing rows
    }
  return(A)
}
#generation of the grid
grid_gen<- function(){
  A=grid_gen_cplt()
    for (i in 1:8) for (j in 1:8) {
      v=sample(1:9)
      A[v[sample(1:9,1)],v[sample(1:9,1)]]=NA
    }
  return(A)
}
################################# plot grid
plt_grid<- function(X){
  plot(1, type="n", xlab="", ylab="", xlim=c(0, 10), ylim=c(0, 10),axes=F)
  for (i in seq(.5,9.5,3)) {
    lines(c(.5,9.5),c(i,i), lwd=3)
    lines(c(i,i),c(.5,9.5), lwd=3)
  }
  for (i in seq(.5,9.5,1)) {
    lines(c(.5,9.5),c(i,i), lwd=1)
    lines(c(i,i),c(.5,9.5), lwd=1)
  }
  for (i in 1:9) {
    text(.25,i,10-i)
    text(i,10,i)
  }
  for (i in 1:9) {
    for(j in 1:9){
      text(j,10-i,X[i,j])
    }
  }

}
################################### help
inp<-function(x,i,j,k){
  text(j,10-i,k)
  x[i,j]=k
  }
#################################################################### Grid Solver
################################### is the line i contains the number n
atrow <- function (x, i, n){n %in% x[i, ]}
################################### is the line j contains the number n
atcol <- function (x, j, n){n %in% x[, j]}
################################### is a box contains the number n
atbox <- function (x, i, j, n){n %in% x[((i - 1) %/% 3)*3+(1:3), ((j - 1) %/% 3)*3+(1:3)]}
################################### is possible to replace a Na by the number n
ispossible <- function (x, i, j, n){
  if(!atrow(x, i, n) && !atcol(x, j, n) && !atbox (x, i, j, n)){
    return(T)
  }
  return(F)
}
################################### Nbr possibilities for each NA case
nbrposs <- function (x, i, j){
  k <- 1:9
  p <- NA
  for (n in k){
    if(isTRUE(ispossible(x, i, j, n)))
      p <- append (p, n)
  }
  p <- p[complete.cases (p)]
  return(length(p))
}
################################### Check grid
check_grid <- function(x){
  K=matrix(NA,9,9)
  for(i in 1:9) for(j in 1:9) {
      k=x[i,j]
      x[i,j]=NA
      K[i,j]=ispossible(x,i,j,k)
  }
  if(all(K)) return(T)
  else return(F)
}
################################################ Solver 2
################################### Grid whith nbr possibilities for NA case
grid_nbrposs <- function (x){
 for(i in 1:9){
   for(j in 1:9){
     if(is.na(x[i,j])){
       x[i,j]=nbrposs(x,i,j)
     }
     else x[i,j]=0
   }
 }
  return(x)
}

order_wposs <- function (x){
  poss=vector()
  row=vector()
  col=vector()
  for(i in 1:9){
    for(j in 1:9){
      if(is.na(x[i,j])){
        poss=append(poss,nbrposs(x,i,j))
        row=append(row,i)
        col=append(col,j)
      }
    }
  }
  D=data.frame(row,col,poss)
  D=D[order(D[,3],decreasing = F),]
  #if(!length(D$row)==0)
  return(D)
  #else if(length(D$row)==0) return(NULL)
}

grid_wnposs <- function (x){
  D=order_wposs(x)
  poss=order(D$poss)
  D=data.frame(D[,1:2],poss)
  for (i in 1:length(D$row)){
    x[D$row[i],D$col[i]]=D$poss[i]
  }
   return(x)
}

solver2<- function (x){
  if (all(!is.na(x))){
    return(x)
  }
  pos=order_wposs(x)
  i=pos$row[1]
  j=pos$col[1]

  for(k in 1:9){
    if(ispossible(x,i,j,k)){
      x[i,j]<-k
      S=solver2(x)
      if(!is.null(S)){
        return(S)
      }
    }
  }
}

Solver_back<-function(x){
  if (all(!is.na(x))){
    return(x)
  }
  pos=order_wposs(x)
  i=1
  back=0
  while(i<=length(pos$row)){
    if()
  }
}




