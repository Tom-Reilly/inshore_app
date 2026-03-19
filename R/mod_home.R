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
        box(title = "Introduction to Inshore Fisheries",
            status = "primary",
            solidHeader = TRUE,
            width = 12,
            includeHTML(app_sys("home_intro.html")))
      ),
      fluidRow(
        column(1,),
        box(
          status = "primary",
          solidHeader = TRUE,
          width = 10,
        img(src="img/boat_scene.jpg",
            alt = "boat stationary in water scence",
            style = "max-width: 100%;"
            )
        ),
        column(1,)
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
