#' lobsters UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_lobsters_ui <- function(id){
  ns <- NS(id)
  tagList(
    fluidPage(
      fluidRow(
        h1("Lobsters", style = "text-align: center; padding:bottom: 10px")
      ),
      fluidRow(
        valueBox("1,322 tonnes", "2023 landings by Scottish vessels into Scotland",
                 href = "https://www.gov.scot/publications/scottish-sea-fisheries-statistics-2023/",
                 color = "yellow", icon = icon("scale-balanced"), width = 6),
        valueBox("£19.286 million", "2023 value of landings by Scottish vessels into Scotland",
                 href = "https://www.gov.scot/publications/scottish-sea-fisheries-statistics-2023/",
                 color = "purple", icon = icon("sterling-sign"), width = 6)
      ),
      fluidRow(
        box(title = "Biology",
            status = "primary",
            solidHeader = TRUE,
            width = 6,
            includeHTML(app_sys("lobsters_biology.html"))),
        box(title = "Fishery",
            status = "primary",
            solidHeader = TRUE,
            width = 6,
            includeHTML(app_sys("lobsters_fishery.html")))
      ),
      fluidRow(
        box(title = "Surveys and Sampling",
            status = "primary",
            solidHeader = TRUE,
            width = 6,
            includeHTML(app_sys("lobsters_survey.html"))),
        box(title = "Assessment",
            status = "primary",
            solidHeader = TRUE,
            width = 6,
            includeHTML(app_sys("lobsters_assessment.html")))
      ),
      fluidRow(
        box(title = "Further Information",
            status = "primary",
            solidHeader = TRUE,
            width = 12,
            includeHTML(app_sys("lobsters_publications.html")))
      )
    )
  )
}

#' lobsters Server Functions
#'
#' @noRd
mod_lobsters_server <- function(id){
  moduleServer( id, function(input, output, session){

  ns <- session$ns
  })
}

## To be copied in the UI
# mod_lobsters_ui("lobsters_1")

## To be copied in the server
# mod_lobsters_server("lobsters_1")
