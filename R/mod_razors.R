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
        box(title=h1("Razor clam", align = "center"),
            background = "light-blue",
            width = 12,
            style = "text-align: center;")
      #  h1("Razor clam", style = "text-align: center; padding:bottom: 10px")
      ),
      fluidRow(
        valueBox("537 tonnes",
                 subtitle = HTML("<p style = 'font-size : 16px;'>2024 landings by Scottish vessels into Scotland</p>
                 <p style = 'font-size : 10px;'>Scottish Sea Fisheries Statistics 2024</p>"),
                 href = "https://www.gov.scot/publications/scottish-sea-fisheries-statistics-2024/",
                 color = "yellow",
                 icon = icon("scale-balanced"),
                 width = 6),
        valueBox("&pound;4.805 million",
                 subtitle = HTML("<p style = 'font-size : 16px;'>2024 value of landings by Scottish vessels into Scotland</p>
                 <p style = 'font-size : 10px;'>Scottish Sea Fisheries Statistics 2024</p>"),
                 href = "https://www.gov.scot/publications/scottish-sea-fisheries-statistics-2024/",
                 color = "purple",
                 icon = icon("sterling-sign"),
                 width = 6)
      ),
      fluidRow(
        box(title = "Biology",
            status = "primary",
            solidHeader = TRUE,
            width = 12,
            column(width = 6, includeHTML(app_sys("razors_biology_txt.html"))),
            column(width = 6, includeHTML(app_sys("razors_biology_img.html")))
        )
      ),
      fluidRow(
        box(title = "Fishery",
            status = "primary",
            solidHeader = TRUE,
            width = 12,
            column(width = 6, includeHTML(app_sys("razors_fishery_txt.html"))),
            column(width = 6, includeHTML(app_sys("razors_fishery_img.html")))
        )
      ),
      fluidRow(
        box(title = "Surveys and Sampling",
            status = "primary",
            solidHeader = TRUE,
            width = 12,
            column(width = 6, includeHTML(app_sys("razors_survey_txt.html"))),
            column(width = 6, includeHTML(app_sys("razors_survey_img.html")))
        )
      ),
      fluidRow(
        box(title = "Assessment and Advice",
            status = "primary",
            solidHeader = TRUE,
            width = 12,
            column(width = 6, includeHTML(app_sys("razors_assessment_txt.html"))),
            column(width = 6, includeHTML(app_sys("razors_assessment_img.html")))
        )
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
