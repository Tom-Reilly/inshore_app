#' wrasse UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList downloadButton downloadHandler
#' @importFrom DT datatable renderDataTable DTOutput

mod_wrasse_ui <- function(id){
  ns <- NS(id)
  tagList(
    fluidPage(
      fluidRow(
        box(title=h1("Wrasse", align = "center"),
            background = "light-blue",
            width = 12,
            style = "text-align: center;")
      #  h1("Wrasse", style = "text-align: center; padding:bottom: 10px")
      ),
      fluidRow(
        valueBox(value = "71 tonnes",
                 subtitle = HTML("<p style = 'font-size : 16px;'>2024 landings by Scottish vessels into Scotland</p>
                 <p style = 'font-size : 10px;'>Scottish Sea Fisheries Statistics 2024</p>"),
                 href = "https://www.gov.scot/publications/scottish-sea-fisheries-statistics-2024/",
                 color = "yellow",
                 icon = icon("scale-balanced"),
                 width = 6),
        valueBox(value = "&pound;6.494 million",
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
            column(width = 6, includeHTML(app_sys("wrasse_biology_txt.html"))),
            column(width = 6, includeHTML(app_sys("wrasse_biology_img.html")))
        )
      ),
      fluidRow(
        box(title = "Fishery",
            status = "primary",
            solidHeader = TRUE,
            width = 12,
            column(width = 6, includeHTML(app_sys("wrasse_fishery_txt.html"))),
            column(width = 6, includeHTML(app_sys("wrasse_fishery_img.html")))
        )
      ),
      fluidRow(
        box(title = "Surveys and Sampling",
            status = "primary",
            solidHeader = TRUE,
            width = 12,
            column(width = 6, includeHTML(app_sys("wrasse_survey_txt.html"))),
            column(width = 6, includeHTML(app_sys("wrasse_survey_img.html")))
        )
      ),
      fluidRow(
        box(title = "Assessment and Advice",
            status = "primary",
            solidHeader = TRUE,
            width = 12,
            column(width = 6, includeHTML(app_sys("wrasse_assessment_txt.html"))),
            column(width = 6, includeHTML(app_sys("wrasse_assessment_img.html")))
        )
      ),
      fluidRow(
        box(title = "Further Information",
            status = "primary",
            solidHeader = TRUE,
            width = 12,
            includeHTML(app_sys("wrasse_publications.html")))
      ),
      fluidRow(
        box(title = "Data",
            status = "primary",
            solidHeader = TRUE,
            width = 12,
            tabsetPanel(id = "wrasseData",
                        tabPanel(title = "Vessel Information",
                                 downloadButton(ns("downloadNoVes"),
                                                label = "Download",
                                                class = "btn-primary",
                                                style = "margin-bottom: 5px"),
                                 DT::DTOutput(ns("noVesTable")),
                                 p("* Mandatory management measures were introduced to the wild wrasse fishery in 2021.")),
                        tabPanel(title = "Monthly landings",
                                 downloadButton(ns("downloadMonLan"),
                                                label = "Download",
                                                class = "btn-primary",
                                                style = "margin-bottom: 5px"),
                                 DT::DTOutput(ns("monLanTable"))),
                        tabPanel(title = "Monthly numbers",
                                 downloadButton(ns("downloadMonNum"),
                                                label = "Download",
                                                class = "btn-primary",
                                                style = "margin-bottom: 5px"),
                                 DT::DTOutput(ns("monNumTable"))),
                        tabPanel(title = "Monthly sizes",
                                 downloadButton(ns("downloadMonSize"),
                                                label = "Download",
                                                class = "btn-primary",
                                                style = "margin-bottom: 5px"),
                                 DT::DTOutput(ns("monSizeTable")))))
      )
    )
  )
}

#' wrasse Server Functions
#'
#' @noRd
mod_wrasse_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns

    output$noVesTable = DT::renderDataTable({DT::datatable(wrasse_data[[1]],
                                                           caption = htmltools::tags$caption(
                                                             style = 'caption-side: top; font-weight: bold;',
                                                             'Table 1. Total number of vessels derogated to fish for wrasse (any revocations), reported landings, and submitted scientific data (2017-2024). Derogations began in 2021, so there are no derogations or science data submissions from 2017-2020.'
                                                           ),
                                                           rownames = FALSE,
                                                           escape = FALSE,
                                                          options = list(dom = 't', scrollX = TRUE))})

    output$monLanTable = DT::renderDataTable({DT::datatable(wrasse_data[[2]],
                                                           caption = htmltools::tags$caption(
                                                             style = 'caption-side: top; font-weight: bold;',
                                                             'Table 2. Monthly wrasse landings (tonnes) reported in each ICES rectangle for years 2017-2024 from derogated vessels. When less than three vessels reported landings an * is used to indicate we are unable to publish, because of General Data Protection Regulations (GDPR).',
                                                             htmltools::a(href= "https://www.gov.scot/publications/sea-fisheries-operations-and-access-privacy-notice/",
                                                                          "Sea fisheries - operations and access: privacy notice.")
                                                           ),
                                                           rownames = FALSE,
                                                           escape = FALSE,
                                                           options = list(scrollX = TRUE, pageLength = 10, lengthMenu = c(10, 25, 50, 100)))})

    output$monNumTable = DT::renderDataTable({DT::datatable(wrasse_data[[3]],
                                                            caption = htmltools::tags$caption(
                                                              style = 'caption-side: top; font-weight: bold;',
                                                              'Table 3. Monthly wrasse numbers reported in each ICES rectangle for years 2017-2024 from derogated vessels. When less than three vessels reported landings an * is used to indicate we are unable to publish, because of General Data Protection Regulations (GDPR).',
                                                              htmltools::a(href= "https://www.gov.scot/publications/sea-fisheries-operations-and-access-privacy-notice/",
                                                                           "Sea fisheries - operations and access: privacy notice.")
                                                            ),
                                                            rownames = FALSE,
                                                            escape = FALSE,
                                                            options = list(scrollX = TRUE, pageLength = 10, lengthMenu = c(10, 25, 50, 100)))})

    output$monSizeTable = DT::renderDataTable({DT::datatable(wrasse_data[[4]],
                                                            caption = htmltools::tags$caption(
                                                              style = 'caption-side: top; font-weight: bold;',
                                                              'Table 4. Wrasse reported as being undersized, oversized, or of permitted size and returned or retained, reported by fishers in the first 20 pots lifted (2021-2024).'
                                                            ),
                                                            rownames = FALSE,
                                                            escape = FALSE,
                                                            options = list(scrollX = TRUE, pageLength = 10, lengthMenu = c(10, 25, 50, 100)))})

    output$downloadNoVes = downloadHandler(
      filename = function() {
        paste0("noVesDataDownload_",Sys.Date(), ".csv")
      },
      content = function(file){
        write.csv(wrasse_data[[1]], file = file, row.names = FALSE)
      }
    )

    output$downloadMonLan = downloadHandler(
      filename = function() {
        paste0("monLanDataDownload_",Sys.Date(), ".csv")
      },
      content = function(file){
        write.csv(wrasse_data[[2]], file = file, row.names = FALSE)
      }
    )

    output$downloadMonNum = downloadHandler(
      filename = function() {
        paste0("monNumDataDownload_",Sys.Date(), ".csv")
      },
      content = function(file){
        write.csv(wrasse_data[[3]], file = file, row.names = FALSE)
      }
    )

    output$downloadMonSize = downloadHandler(
      filename = function() {
        paste0("monSizeDataDownload_",Sys.Date(), ".csv")
      },
      content = function(file){
        write.csv(wrasse_data[[4]], file = file, row.names = FALSE)
      }
    )
  })
}

  ## To be copied in the UI

#mod_wrasse_ui("wrasse_1")
## To be copied in the server
# mod_wrasse_server("wrasse_1")
