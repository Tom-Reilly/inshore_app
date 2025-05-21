#' vessels UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_vessels_ui <- function(id){
  ns <- NS(id)
  tagList(
    tagList(
      fluidPage(
        fluidRow(
          box(
            width = 12,
          includeHTML(app_sys("vessels_intro.html"))
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
              width = 6,
              includeHTML(app_sys("vessels_market.html"))),
          box(title = "Observer Sampling",
              status = "primary",
              solidHeader = TRUE,
              width = 6,
              includeHTML(app_sys("vessels_observer.html")))
        )
      )
    )
  )
}

#' vessels Server Functions
#'
#' @noRd
mod_vessels_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
  })
}

  ## To be copied in the UI
# mod_vessels_ui("vessels_1")

## To be copied in the server
# mod_vessels_server("vessels_1")
