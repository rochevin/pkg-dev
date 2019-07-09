add_col <- function(df,name = "y",value,where = 1){

  if(name %in% names(df)){
    df[[name]] <- value
    df
  }else{
    newdf <- stats::setNames(data.frame(value),name)
    insert_into(df,newdf,where = where)

  }
}
