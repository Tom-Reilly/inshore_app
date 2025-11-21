#' razors UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_razors_ui <- function(id){
  ns <- NS(id)
  tagList(
    fluidPage(
      fluidRow(
        h1("Razor clams", style = "text-align: center; padding:bottom: 10px")
      ),
      fluidRow(
        valueBox("569 tonnes",
                 "2023 landings by Scottish vessels into Scotland",
                 href = "https://www.gov.scot/publications/scottish-sea-fisheries-statistics-2023/",
                 color = "yellow", icon = icon("scale-balanced"), width = 6),
        valueBox("£5.295 million", "2023 value of landings by Scottish vessels into Scotland",
                 href = "https://www.gov.scot/publications/scottish-sea-fisheries-statistics-2023/",
                 color = "purple", icon = icon("sterling-sign"), width = 6)
      ),
      fluidRow(
        box(title = "Biology",
            status = "primary",
            solidHeader = TRUE,
            width = 6,
            includeHTML(app_sys("razors_biology.html"))),
        box(title = "Fishery",
            status = "primary",
            solidHeader = TRUE,
            width = 6,
            includeHTML(app_sys("razors_fishery.html")))
      ),
      fluidRow(
        box(title = "Surveys and Sampling",
            status = "primary",
            solidHeader = TRUE,
            width = 6,
            includeHTML(app_sys("razors_survey.html"))),
        box(title = "Assessment",
            status = "primary",
            solidHeader = TRUE,
            width = 6,
            includeHTML(app_sys("razors_assessment.html")))
      ),
      fluidRow(
        box(title = "Further Information",
            status = "primary",
            solidHeader = TRUE,
            width = 12,
            includeHTML(app_sys("razors_publications.html")))
      )
    )
  )
}

#' razors Server Functions
#'
#' @noRd
mod_razors_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns

  })
}

## To be copied in the UI
# mod_razors_ui("razors_1")

  ## To be copied in the server
# mod_razors_server("razors_1")
