#' A lookup table for NHS geographies
#'
#' @return dataframe. A dataframe of lookup geographies, with codes and names.
#' @export
#'
geog_lookup_nhs <- function(){

  lookup <- geographr::lookup_lsoa11_sicbl22_icb22_ltla22 |>

    # add msoa names
    dplyr::left_join(geographr::lookup_lsoa11_msoa11 , by = "lsoa11_code", keep = FALSE) |>
    dplyr::rename(lsoa11_name = lsoa11_name.x) |>
    dplyr::select(-lsoa11_name.y) |>

    # order columns from small to large geography
    dplyr::relocate(dplyr::all_of(c("msoa11_name", "msoa11_code")), .after = lsoa11_code)

}
