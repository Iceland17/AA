#' @title Split The Data Into Two Groups
#' @param betaMatrix A matrix or data frame with column names each at least 15
#' characters long, where the 14th and 15th characters are both numeric digit
#' @returns A list composed of two groups of data
#' @export
#' @importFrom base colnames as.numeric
#' @examples \donttest{da<-matrix(sample(1:30,25),nrow=5,ncol=5)
#' colnames(da)<-paste0("xxxxxxxxxxxxx",c("01y","12y","03y","11y","05y"))
#' dat<-getTumorNormal(da)
#' print(dat)}
getTumorNormal <- function(betaMatrix){

  sampleNames = colnames(betaMatrix)
  tumor.idx = (substr(sampleNames,14,15)) < 10
  normal.idx = as.numeric(substr(sampleNames,14,15)) >= 10
  betaMatrix.tumor = betaMatrix[,tumor.idx]
  betaMatrix.normal = betaMatrix[,normal.idx]

  res = list(betaMatrix.normal = betaMatrix.normal,betaMatrix.tumor = betaMatrix.tumor)
}
