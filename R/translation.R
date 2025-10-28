#' Translation
#'
#' @param codons
#' Codons to be translated from the mRNA to peptide according to the codon table.
#'
#' @return
#' Peptide according to the codons mRNA.
#'
#' @export

translation <- function(codons){
  peptide <- paste0(codonTable[codons], collapse = "")
  return(peptide)
}
