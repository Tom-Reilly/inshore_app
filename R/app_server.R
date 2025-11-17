#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {
  # Your application server logic
  mod_home_server("home_1")
  mod_dataCollection_server("dataCollection_1")
  mod_browncrab_server("browncrab_1")
  mod_cockles_server("cockles_1")
  mod_lobsters_server("lobsters_1")
  mod_nephrops_server("nephrops_1")
  mod_razors_server("razors_1")
  mod_scallops_server("scallops_1")
  mod_velvetcrab_server("velvetcrab_1")
  mod_wrasse_server("wrasse_1")
  #mod_vessels_server("vessels_1")
}
