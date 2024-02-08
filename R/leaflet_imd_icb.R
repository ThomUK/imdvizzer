#' Create a leaflet map of IMD by ICB
#'
#' @param icb_name character. The name of the ICB to map.
#'
#' @returns Quarto document containing a leaflet map
#' @export
leaflet_imd_icb <- function(icb_name) {

  icb_name <- "NHS Nottingham and Nottinghamshire Integrated Care Board"

  # get the shapefile data we need
  lsoa_bounds <- geographr::boundaries_lsoa11

  # lookup between lsoa and icb
  lookup <- imdvizzer::lookup_nhs_imd() |>
    dplyr::filter(if_any("icb22_name", \(x) x == {{ icb_name }})) |>
    dplyr::filter(if_any("IMD_decile", \(x) x %in% c(1, 2)))

  # join the lookup to the boundary data, and then join IMD data on
  # (it's always better to start with an sf table and add data columns to that)
  dtf <- lsoa_bounds |>
    dplyr::inner_join(lookup, "lsoa11_code") |>
    sf::st_make_valid()

  m <- leaflet::leaflet() |>
        leaflet::addTiles() |>   # Add default OpenStreetMap map tiles
        leaflet::addPolygons(
          data = dtf, color = "red", weight = 0.3, opacity = 1,
          fillColor = "red", fillOpacity = 0.3,
          #   label = ~paste("IMDRank: ", IMDRank),
        )

  qmd_filepath <- file.path(system.file(package = "imdvizzer"), "qmd/core20.qmd")

  #use rmarkdown::render instead of quarto:render so that the object classes are preserved
  rmarkdown::render(qmd_filepath, params = list(m = m, icb_name = icb_name))

}
