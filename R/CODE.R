library(magic)
#generation of the grid
grid_gen <- function(){
  A=diag(0,9)
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
#the grid as a 9x9 matrix
A=grid_gen()
################################# plot grid
plt_grid_sol<- function(){
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
    text(.25,i,i)
    text(i,.25,i)
  }
  for (i in 1:9) {
    for(j in 1:9){
      text(j,i,A[i,j])
    }
  }
}
# make gaps in the grid
plt_grid<- function(k){
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
    text(.25,i,i)
    text(i,.25,i)
  }
  if (k=="Easy"){
    for (i in sample(1:9,7)) {
      for(j in sample(1:9,7)){
        text(j,i,A[i,j])
      }
    }
  }
  else if (k=="Difficult"){
    for (i in sample(1:9,6)) {
      for(j in sample(1:9,6)){
        text(j,i,A[i,j])
      }
    }
  }
  else if (k=="Hard"){
    for (i in sample(1:9,5)) {
      for(j in sample(1:9,5)){
        text(j,i,A[i,j])
      }
    }
  }
}
################################### help
help<-function(i,j){
  text(i,j,A[j,i])
}

