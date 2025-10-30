#' Generate a DNA sequence of specified length
#'
#' This function generates a random DNA sequence of a specified length.
#' It samples nucleotides ("A", "T", "G", "C") with replacement, meaning
#' bases can repeat, and concatenates them into a single string.
#' For example, with a sequence size of 9, the output could be "AATGCCGTA".
#'
#' @param dnaSize Integer. The desired length of the DNA sequence.
#'
#' @returns DNA - A character string representing a DNA sequence.
#' @export
#'
dnaSequence <- function(dnaSize){
  dnaTmp <- sample(c("A", "T", "G", "C"), size = dnaSize, replace = TRUE)
  dna <- paste0(dnaTmp, collapse = "")
  return(dna)
}
