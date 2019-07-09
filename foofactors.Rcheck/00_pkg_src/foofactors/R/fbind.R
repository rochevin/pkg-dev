
#' Bind two factors
#'
#' @param factor
#' @param factor
#'
#' @return factor
#' @export
#'
#' @examples fbind(factor(letters[1:3]),factor(letters[26:24]))
fbind <- function(a,b){
  return(
    factor(c(as.character(a),as.character(b)))
  )
}
