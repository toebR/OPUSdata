#' Transforms spectral data to long format
#'
#' Takes a .dpt list input and transforms to long.
#'
#'
#' @param spectra_wide list object to transform
#' @return spectra list object in wide format
#' @examples spectra_to_long(spectra_wide = spectra)
#' @export

spectra_to_long <- function(spectra_wide) {
  spectra_wide %>%
    pivot_longer(cols = -wavelength) %>%
    rename(particle = name,
           absorbtion_unit = value) -> spectra_long
  print(spectra_long)
}


