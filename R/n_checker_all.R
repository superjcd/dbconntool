#' @title  Check all datatables to find how many rows does these db contains
#' @description  Check all datatables to find how many rows does these db contains
#' @param tbls a character vector contain the table names in database connection
#' @return a dataframe to show all the row numbers in each dn tables
#' @examples
#' library(dplyr)
#' conn<-'some db connection'
#' tbls<-src_tbls(conn)


n_checker_all<-function(tbls){
  tble_sum<- purrr::map_dfr(tbls,n_checker)
  table_summary<-cbind(data.frame(`表名`=tbls),tble_sum)
  table_summary
}


