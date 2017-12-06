#' @title 保留有数据的列
#' @description
#' 保留有数据的行，去除缺少数据的行，可以自定义门槛值
#' @param data,dataframe
#' @param threshould,number

keep_coloumn<-function(data,threshold=0.3){
  data[,colSums(!is.na(data))>=threshold*nrow(data)]
}
