#' velvetcrab UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_velvetcrab_ui <- function(id){
  ns <- NS(id)
  tagList(
    fluidPage(
      fluidRow(
        h1("Velvet crabs", style = "text-align: center; padding:bottom: 10px")
      ),
      fluidRow(
        valueBox(value = "1,303 tonnes",
                 subtitle = HTML("<p style = 'font-size : 16px;'>2023 landings by Scottish vessels into Scotland</p>
                 <p style = 'font-size : 10px;'>Scottish Sea Fisheries Statistics 2023</p>"),
                 href = "https://www.gov.scot/publications/scottish-sea-fisheries-statistics-2023/",
                 color = "yellow",
                 icon = icon("scale-balanced"),
                 width = 6),
        valueBox(value = "£4.248 million",
                 subtitle = HTML("<p style = 'font-size : 16px;'>2023 value of landings by Scottish vessels into Scotland</p>
                 <p style = 'font-size : 10px;'>Scottish Sea Fisheries Statistics 2023</p>"),
                 href = "https://www.gov.scot/publications/scottish-sea-fisheries-statistics-2023/",
                 color = "purple",
                 icon = icon("sterling-sign"),
                 width = 6)
      ),
      fluidRow(
        box(title = "Biology",
            status = "primary",
            solidHeader = TRUE,
            width = 6,
            includeHTML(app_sys("velvetcrab_biology.html"))),
        box(title = "Fishery",
            status = "primary",
            solidHeader = TRUE,
            width = 6,
            includeHTML(app_sys("velvetcrab_fishery.html"))),
      ),
      fluidRow(
        box(title = "Surveys and Sampling",
            status = "primary",
            solidHeader = TRUE,
            width = 6,
            includeHTML(app_sys("velvetcrab_survey.html"))),
        box(title = "Assessment",
            status = "primary",
            solidHeader = TRUE,
            width = 6,
            includeHTML(app_sys("velvetcrab_assessment.html")))
      ),
      fluidRow(
        box(title = "Further Information",
            status = "primary",
            solidHeader = TRUE,
            width = 12,
            includeHTML(app_sys("velvetcrab_publications.html")))
      )
    )
  )
}

#' velvetcrab Server Functions
#'
#' @noRd
mod_velvetcrab_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns

  })
}

## To be copied in the UI
# mod_velvetcrab_ui("velvetcrab_1")

## To be copied in the server
# mod_velvetcrab_server("velvetcrab_1")
