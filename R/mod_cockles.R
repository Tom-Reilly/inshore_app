#' cockles UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_cockles_ui <- function(id){
  ns <- NS(id)
  tagList(
    fluidPage(
      fluidRow(
        h1("Cockles", style = "text-align: center; padding:bottom: 10px")
      ),
      fluidRow(
        valueBox("<1 tonne", "2023 landings by Scottish vessels into Scotland", color = "yellow", icon = icon("scale-balanced"), width = 6),
        valueBox("<£1 thousand", "2023 value of landings by Scottish vessels into Scotland", color = "purple", icon = icon("sterling-sign"), width = 6)
      ),
      fluidRow(
        box(title = "Biology",
            status = "primary",
            solidHeader = TRUE,
            width = 6,
            includeHTML(app_sys("cockles_biology.html"))),
        box(title = "Fishery",
            status = "primary",
            solidHeader = TRUE,
            width = 6,
            includeHTML(app_sys("cockles_fishery.html"))),
      ),
      fluidRow(
        box(title = "Surveys and Sampling",
            status = "primary",
            solidHeader = TRUE,
            width = 6,
            includeHTML(app_sys("cockles_survey.html"))),
        box(title = "Assessment",
            status = "primary",
            solidHeader = TRUE,
            width = 6,
            includeHTML(app_sys("cockles_assessment.html")))
      ),
      fluidRow(
        box(title = "Further Information",
            status = "primary",
            solidHeader = TRUE,
            width = 12,
            includeHTML(app_sys("cockles_publications.html")))
      )
    )
  )
}

#' cockles Server Functions
#'
#' @noRd
mod_cockles_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns

  })
}

## To be copied in the UI
# mod_cockles_ui("cockles_1")

## To be copied in the server
# mod_cockles_server("cockles_1")
