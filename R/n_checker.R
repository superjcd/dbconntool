#' @title 查看数据库中表的行数
#' @description
#' 保留有数据的行，去除缺少数据的行，可以自定义门槛值
#' @param conn, A database connecttion
#' @param x,database table name

n_checker<-function(x){
  as.data.frame(dplyr::summarise(dplyr::tbl(conn,x),n=n()))
}

