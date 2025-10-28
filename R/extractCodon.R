#' Extract codons from a DNA coding sequence
#'
#' @param codingSequence A string indicating the coding DNA sequence.
#' @param start An integer indicating the starting position for codon extraction (default is 1).
#'
#' @returns A character vector containing codons.
#' @export
#'
#' @examples
#' # Extract codons from default coding frame
#' extractCodon("ATCGTC")
#' # Extract codons from the second nucleotide
#' extractCodon("TATCGTC", 2)

extractCodon <- function(codingSequence, start = 1){
  seqLength <- nchar(codingSequence)
  codons <- substring(codingSequence,
                      first = seq(from = start, to = seqLength-3+1, by = 3),
                      last = seq(from = 3+start-1, to = seqLength, by = 3))
  return(codons)
}
