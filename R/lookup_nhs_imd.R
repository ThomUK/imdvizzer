#' A lookup table of IMDs for NHS geographies
#'
#' @return dataframe. A dataframe of IMD ranks and deciles, complete with NHS geographies, codes, and names.
#' @export
#'
lookup_nhs_imd <- function(){

  # get the IMD data
  imd <- IMD::imd_england_lsoa |>
    dplyr::mutate(across("IMD_decile", as.factor)) |>
    dplyr::rename(lsoa11_code = "lsoa_code")

  # create the lookup with multiple joins
  lookup <- geographr::lookup_lsoa11_sicbl22_icb22_ltla22 |>

    # add msoa names
    dplyr::left_join(geographr::lookup_lsoa11_msoa11 , by = "lsoa11_code") |>
    dplyr::rename(lsoa11_name = lsoa11_name.x) |>
    dplyr::select(-lsoa11_name.y) |>

    # order columns from small to large geography
    dplyr::relocate(dplyr::all_of(c("msoa11_name", "msoa11_code")), .after = lsoa11_code) |>

    # join the imd data
    dplyr::left_join(imd, by = "lsoa11_code")

}
