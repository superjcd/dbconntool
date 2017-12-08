keshi_match<-function(x){
  if(stringr::str_detect(x,pattern = 'icu|ICU')){ICU
  }else {
    stringr::str_match(x,
             pattern = '[^[:digit:]^[:punct:]^[a-zA-Z]^[东西南北]]{2,20}')
      }
  
}


keshi_match(targets[200:280])
