#' @title 查看数据库中所有表的行数
#' @description
#' 查看数据库中所有表的行数,汇聚成一个数据表
#' @param tbls, table names of a db


n_checker_all<-function(tbls){
  tble_sum<- purrr::map_dfr(tbls,n_checker)
  table_summary<-cbind(data.frame(`表名`=tbls),tble_sum)
  table_summary
}


