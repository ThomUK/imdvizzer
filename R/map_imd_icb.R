#' Map IMD by ICB
#'
#' @param icb_name character. The name of the ICB to map.
#' @param include_title logical. Decide whether to include the plot title. Default = TRUE
#'
#' @return list. A list containing a ggplot object, and the name of the ICB.
#' @export
#'
map_imd_icb <- function(icb_name, include_title = TRUE){

  # need this call here to prevent some strange errors later

  library(sf)

  # get the IMD data
  imd <- IMD::imd_england_lsoa |>
    dplyr::mutate(
      IMD_decile = factor(IMD_decile)
    )

  # get the shapefile data we need
  geometry <- geographr::boundaries_lsoa11

  # lookup between lsoa and icb
  lookup <- geographr::lookup_lsoa11_sicbl22_icb22_ltla22 |>
    dplyr::select(lsoa11_code, icb22_name)

  # join the geometry and imb data on
  dtf <- lookup |>
    dplyr::filter(icb22_name == icb_name) |>
    dplyr::left_join(geometry, by = "lsoa11_code") |>
    dplyr::left_join(imd, by = c("lsoa11_code" = "lsoa_code"))

  # decide what title to use
  plot_title <- ifelse(include_title, icb_name, "")

  # make the plot
  plt <- ggplot2::ggplot(dtf) +
    ggplot2::geom_sf(ggplot2::aes(geometry = geometry, fill = IMD_decile)) +
    ggplot2::scale_fill_manual(values = colorRampPalette(c("#71196E", "#FFFFFF"))(10)) +
    ggplot2::theme_void() +
    ggplot2::labs(
      title = plot_title,
      fill = "IMD decile",
      caption = "Data Source: MHCLG"
    )

  # create a list to support Rmd output of title
  list(
    name = icb_name,
    plot = plt
  )

}

