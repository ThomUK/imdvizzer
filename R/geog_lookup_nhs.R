#' A lookup table for NHS geographies
#'
#' @return dataframe. A dataframe of lookup geographies, with codes and names.
#' @export
#'
geog_lookup_nhs <- function(){

  lookup <- geographr::lookup_lsoa11_sicbl22_icb22_ltla22 |>
    dplyr::select(all_of(c(lsoa11cd = "lsoa11_code", "icb22_name")))

}
