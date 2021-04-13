#' Write spectral data to CSV
#'
#' Takes a .dpt list object and calculates
#' the number of particles and columns in the data.
#' Renames the columns, transforms to long format and
#' writes 2 CSV, 1 in long and 1 in wide format.
#'
#'
#' @param spectra list object to transform
#' @param out_path path to directory if outputs
#' @param out_file filename basestring of outputs
#' @return 2 CSV files
#' @examples spectra_to_csv(spectra = spectra, out_path = "C:/workspace/", out_file = "test_out")
#' @export

spectra_to_csv <- function(spectra,out_path, out_file) {
  cols <- ncol(spectra)
  particlenr <- cols -1
  message(paste("Nr of Columns in spectra file = ", cols))
  message(paste("Nr of Particles in data = ", cols-1))

  message(paste("\n\n", "Renaming data..."))
  colnames(spectra) <- c("wavelength", paste0("abs_particle", seq(1,particlenr,1)))
  message(paste("done!"))
  colnames(spectra)

  message(paste("\n\n", "Transform data to long format.."))
  spectra %>%
    spectra_to_long() -> spectra_long
  message(paste("done!"))

  message(paste("\n\n", "Write CSV long and wide format..."))

  write.csv(spectra, file = paste0(out_path,"\\",out_file,"_wide.csv"))
  write.csv(spectra_long, file = paste0(out_path,"\\",out_file,"_long.csv"))

  message(paste("done!"))
}
