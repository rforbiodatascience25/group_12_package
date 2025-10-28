#' DNA to RNA converter
#'
#' @param DNA_string a string containing DNA
#'
#' @returns The initial DNA string now converted into RNA
#' @export
#'
#' @examples
#' DNA <- 'ACTTGCA'
#' DNA_to_RNA(DNA)
DNA_to_RNA <- function(DNA_string){
  RNA_string <- gsub("T", "U", DNA_string)
  return(RNA_string)
}
