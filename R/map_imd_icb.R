#' Map IMD by ICB
#'
#' @param icb_name character. The name of the ICB to map.
#' @param include_title logical. Decide whether to include the plot title. Default = TRUE
#'
#' @returns list. A list containing a ggplot object, and the name of the ICB.
#' @export
map_imd_icb <- function(icb_name, include_title = TRUE) {

  # get the shapefile data we need
  lsoa_bounds <- geographr::boundaries_lsoa11

  # lookup between lsoa and icb
  lookup <- imdvizzer::geog_lookup_nhs() |>
    dplyr::filter(if_any("icb22_name", \(x) x == {{ icb_name }}))

  # join the lookup to the boundary data, and then join IMD data on
  # (it's always better to start with an sf table and add data columns to that)
  dtf <- lsoa_bounds |>
    dplyr::inner_join(lookup, "lsoa11_code") |>
    sf::st_make_valid()

  # create a custom palette (magenta to white)
  imd_palette <- grDevices::colorRampPalette(c("#71196E", "#FFFFFF"))(10)

  # make the plot
  dtf |>
    ggplot2::ggplot() +
    ggplot2::geom_sf(aes(fill = .data[["IMD_decile"]])) +
    ggplot2::scale_fill_manual(values = imd_palette) +
    ggplot2::theme_void() +
    ggplot2::labs(
      title = ifelse(include_title, icb_name, ""),
      subtitle = ifelse(include_title, "Indices of Multiple Deprivation (2019)", ""),
      fill = "IMD decile",
      caption = "Data Source: MHCLG"
    )
}
