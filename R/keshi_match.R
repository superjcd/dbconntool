#' @title  An alternative way to keep good info of keshi
#' @description  A alternative way to keep good info of keshi
#' @param x a character varible contain keshi info
#' @return a refined keshi varible
#' @examples
#' keshi_match('肝病1（东）')
keshi_match<-function(x){
  if(stringr::str_detect(x,pattern = 'icu|ICU')){ICU
  }else {
    stringr::str_match(x,
             pattern = '[^[:digit:]^[:punct:]^[a-zA-Z]^[东西南北]
             ^[一二三]]{2,20}')
      }

}



