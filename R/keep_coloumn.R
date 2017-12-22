#' @title  Keep the column with the data more than the threshold
#' @description  Keep the column with the data more than the threshold
#' @param data dataframe
#' @param threshold define a bottom limit to decide the varible is good or not
#' @return a refined dataframe
#' @examples
#' data<-data.frame(x=rep(NA,10),y=1:10,z=letters[1:10])

keep_coloumn<-function(data,threshold=0.3){
  data[,colSums(!is.na(data))>=threshold*nrow(data)]
}
