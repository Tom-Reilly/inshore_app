#' nephrops UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_nephrops_ui <- function(id){
  ns <- NS(id)
  tagList(
    fluidPage(
      fluidRow(
        h1("Nephrops norvegicus", style = "text-align: center; padding:bottom: 10px")
      ),
      fluidRow(
        valueBox(value = "19,658 tonnes",
                 subtitle = HTML("<p style = 'font-size : 16px;'>2023 landings by Scottish vessels into Scotland</p>
                 <p style = 'font-size : 10px;'>Scottish Sea Fisheries Statistics 2023</p>"),
                 href = "https://www.gov.scot/publications/scottish-sea-fisheries-statistics-2023/",
                 color = "yellow",
                 icon = icon("scale-balanced"),
                 width = 6),
        valueBox(value = "£82.234 million",
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
            includeHTML(app_sys("nephrops_biology.html"))),
        box(title = "Fishery",
            status = "primary",
            solidHeader = TRUE,
            width = 6,
            includeHTML(app_sys("nephrops_fishery.html")))
      ),
      fluidRow(
        box(title = "Surveys and Sampling",
            status = "primary",
            solidHeader = TRUE,
            width = 6,
            includeHTML(app_sys("nephrops_survey.html"))),
        box(title = "Assessment",
            status = "primary",
            solidHeader = TRUE,
            width = 6,
            includeHTML(app_sys("nephrops_assessment.html")))
      ),
      fluidRow(
        box(title = "Further Information",
            status = "primary",
            solidHeader = TRUE,
            width = 12,
            includeHTML(app_sys("nephrops_publications.html")))
      )
    )
  )
}

#' nephrops Server Functions
#'
#' @noRd
mod_nephrops_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns

  })
}

## To be copied in the UI
# mod_nephrops_ui("nephrops_1")

## To be copied in the server
# mod_nephrops_server("nephrops_1")
