#' Add a new column to a data frame
#' Add a new column defined by the user and put in on the existing data frame
#' @param df A data frame
#' @param name Name of the new column
#' @param value Value of the new column
#' @param where Where the new column will be located
#'
#' @return A data frame
#' @export
#'
#' @examples
#' df <- data.frame(x = 1)
#' add_col(df, "x", 2, where = 2)
add_col <- function(df,name = "y",value,where = ncol(df)+1){

  if(name %in% names(df)){
    df[[name]] <- value
    df
  }else{
    newdf <- stats::setNames(data.frame(value),name)
    insert_into(df,newdf,where = where)

  }
}
