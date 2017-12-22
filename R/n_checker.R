#' @title Find how many rows a mysql database table contains
#' @description  Find how many rows a database table contains
#' @param x table name a character
#' @return a numeric number
#' @examples
#' library(dplyr)
#' conn<-'some database connection'
#' n_checher('sometable')#not run

n_checker<-function(x){
  as.data.frame(dplyr::summarise(dplyr::tbl(conn,x),n=n()))
}

