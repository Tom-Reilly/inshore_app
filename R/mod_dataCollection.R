#' dataCollection UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_dataCollection_ui <- function(id){
  ns <- NS(id)
  tagList(
    fluidPage(
      fluidRow(
        box(title = "Introduction to Data Collection",
            status = "primary",
            solidHeader = TRUE,
            width = 12,
          includeHTML(app_sys("collection_intro.html"))
        )
      ),
      fluidRow(
        box(title = "MRV Scotia Factsheet",
            status = "primary",
            solidHeader = TRUE,
            width = 6,
            includeHTML(app_sys("vessels_scotia.html"))),
        box(title = "MRV Alba Na Mara Factsheet",
            status = "primary",
            solidHeader = TRUE,
            width = 6,
            includeHTML(app_sys("vessels_alba.html")))
      ),
      fluidRow(
        box(title = "Market Sampling",
            status = "primary",
            solidHeader = TRUE,
            width = 12,
            includeHTML(app_sys("collection_market.html"))
        )
      ),
      fluidRow(
        box(title = "Observer Sampling",
            status = "primary",
            solidHeader = TRUE,
            width = 12,
            includeHTML(app_sys("collection_observer.html"))
        )
      )
    )
  )
}

#' dataCollection Server Functions
#'
#' @noRd
mod_dataCollection_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns

  })
}

## To be copied in the UI
# mod_dataCollection_ui("dataCollection_1")

## To be copied in the server
# mod_dataCollection_server("dataCollection_1")
