keshi_match<-function(x){
  if(stringr::str_detect(x,pattern = 'icu|ICU')){ICU
  }else {
    stringr::str_match(x,
             pattern = '[^[:digit:]^[:punct:]^[a-zA-Z]^[东西南北]
             ^[一二三]]{2,20}')
      }

}



