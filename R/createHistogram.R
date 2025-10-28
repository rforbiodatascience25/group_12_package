#' Histogram Creation
#'
#' @param dnaSeq is the original DNA sequence
#'
#' @returns this function returns a histogram
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
#' @export

# define function
createHistogram <- function(dnaSeq){

  # get unique characters
  chars <- dnaSeq |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  # count how often each character is in original string
  counts <- sapply(chars, function(aminoAcid) stringr::str_count(string = dnaSeq, pattern =  aminoAcid)) |>
    as.data.frame()

  # tidy up column names
  colnames(counts) <- c("Counts")
  counts[["dnaSeq"]] <- rownames(counts)

  # create plot
  plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = dnaSeq, y = Counts, fill = dnaSeq)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  # return plot
  return(plot)
}
