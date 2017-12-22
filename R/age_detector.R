#' @title  Change the format of age in db(check befor use)
#' @description  Change the format of age in db(check befor use)
#' @param x a length1 character that you chose to use as start
#' @details usually can be used with map_chr
#' @return a refined character type of age varible
#' @examples
#' #good one
#' age_detector('40岁')
#'
#' ages<-c('28天','50岁','10个月')
#' require(purrr)
#' map_chr(ages,age_detector)


age_detector<-function(x){
  if(is.na(x)){NA
  }else if(stringr::str_detect(x,pattern = '岁')){str_match(x,pattern = '[:digit:]{1,3}')[[1]]
  }else if(stringr::str_detect(x,pattern = '月')){'0.5'
  }else if(stringr::str_detect(x,pattern = '天')){'0.1'
  }else{NA}
}
