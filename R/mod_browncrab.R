#' browncrab UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_browncrab_ui <- function(id){
  ns <- NS(id)
  tagList(
    fluidPage(
      fluidRow(
        h1("Brown crabs", style = "text-align: center; padding:bottom: 10px")
      ),
      fluidRow(
        valueBox(value = "5,614 tonnes",
                 subtitle = HTML("<p style = 'font-size : 16px;'>2023 landings by Scottish vessels into Scotland</p>
                 <p style = 'font-size : 10px;'>Scottish Sea Fisheries Statistics 2023</p>"),
                 href = "https://www.gov.scot/publications/scottish-sea-fisheries-statistics-2023/",
                 color = "yellow",
                 icon = icon("scale-balanced"),
                 width = 6),
        valueBox(value = "£15.178 million",
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
            includeHTML(app_sys("browncrab_biology.html"))),
        box(title = "Fishery",
            status = "primary",
            solidHeader = TRUE,
            width = 6,
            includeHTML(app_sys("browncrab_fishery.html")))
      ),
      fluidRow(
        box(title = "Surveys and Sampling",
            status = "primary",
            solidHeader = TRUE,
            width = 6,
            includeHTML(app_sys("browncrab_survey.html"))),
        box(title = "Assessment",
            status = "primary",
            solidHeader = TRUE,
            width = 6,
            includeHTML(app_sys("browncrab_assessment.html")))
      ),
      fluidRow(
        box(title = "Publications",
            status = "primary",
            solidHeader = TRUE,
            width = 12,
            includeHTML(app_sys("browncrab_publications.html")))
      )
    )
  )
}

#' browncrab Server Functions
#'
#' @noRd
mod_browncrab_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns

  })
}

## To be copied in the UI
# mod_browncrab_ui("browncrab_1")

## To be copied in the server
# mod_browncrab_server("browncrab_1")
