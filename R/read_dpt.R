#' load a .dpt file
#'
#' This function reads in a .dpt file and returns a list.
#'
#'
#' @param path_to_file path to the input file
#' @return A list of the input file
#' @examples read_dpt(path_to_file = "workspace/data.dpt")
#' @export

read_dpt <- function(path_to_file) {
  read.table(file = path_to_file)
}
