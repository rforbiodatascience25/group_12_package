#' Generates dna sequence from sample
#'
#' This function first allows a dna size like e.g. 9 nucleotides,
#' and allows them to be repeated. In the end it merges them together which is
#' what collapse do. In the end you shoud get something like AATGCCGTA if
#' you have a sample size of 9.
#'
#' @param dnaSize
#'
#' @returns dna
#' @export
#'
#' @examples
dnaSequence <- function(dnaSize){
  dnaTmp <- sample(c("A", "T", "G", "C"), size = dnaSize, replace = TRUE)
  dna <- paste0(dnaTmp, collapse = "")
  return(dna)
}
