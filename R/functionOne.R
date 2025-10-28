#' Codons
#'
#' @param dnaSize
#'
#' @returns
#' @export
#'
#' @examples
dnaSequence <- function(dnaSize){
  dnaTmp <- sample(c("A", "T", "G", "C"), size = dnaSize, replace = TRUE)
  dna <- paste0(dnaTmp, collapse = "")
  return(dna)
}
