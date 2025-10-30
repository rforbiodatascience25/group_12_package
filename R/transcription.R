#' Transcription - DNA to RNA converter
#'
#' @param DNA_string a string containing DNA
#'
#' @returns The initial DNA string is now converted into RNA
#' @export
#'
#' @examples
#' DNA <- 'ACTTGCA'
#' transcription(DNA)
transcription <- function(dnaString){
  rnaString <- gsub("T", "U", dnaString)
  return(rnaString)
}
