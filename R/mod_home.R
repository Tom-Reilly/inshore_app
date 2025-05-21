#' home UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
#' @import bslib
mod_home_ui <- function(id){
  ns <- NS(id)
  tagList(
    fluidPage(
      fluidRow(
        box(title = "Inshore Fisheries",
            status = "primary",
            solidHeader = TRUE,
            width = 12,
            includeHTML(app_sys("home_intro.html")))
      ),
      fluidRow(
        column(width = 6,
        box(title = "What is 'inshore'?",
            status = "primary",
            solidHeader = TRUE,
            width = NULL,
            includeHTML(app_sys("home_whatisinshore.html"))),
        box(title = "Coastal Communities",
            status = "primary",
            solidHeader = TRUE,
            width = NULL,
            includeHTML(app_sys("home_coastalcomms.html")))
        ),
        column(width = 6,
        box(title = "Data Collection",
            status = "primary",
            solidHeader = TRUE,
            width = NULL,
            includeHTML(app_sys("home_datacollection.html"))),
        box(title = "Regional Inshore Fisheries Groups",
            status = "primary",
            solidHeader = TRUE,
            width = NULL,
            includeHTML(app_sys("home_rifg.html")))
        )
      )
    )
  )
}

#' home Server Functions
#'
#' @noRd
mod_home_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns


})}


#To be copied in the UI# mod_home_ui("home_1")

## To be copied in the server
# mod_home_server("home_1")
