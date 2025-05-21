#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @import shinydashboard
#' @noRd
app_ui <- function(request) {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    tags$body(
      tags$div("Under development", style = "text-transform: uppercase; color: red; text-align: center; font-size: 35px;"),
    # Your application UI logic
    dashboardPage(
      skin = "blue",
      dashboardHeader(title = "Inshore Fisheries Science, Assessment and Advice",
                      titleWidth = 500,
                      tags$li(tags$div(tags$img(src="www/sg-logo.jpg", height = "50px")),class="dropdown")),
      dashboardSidebar(
        sidebarMenu(id = "tabs",
          menuItem("Home", tabName = "Home"),
          menuItem("Nephrops", tabName = "Nephrops"),
          menuItem("Scallops", tabName = "Scallops"),
          menuItem("Cockles", tabName = "Cockles"),
          menuItem("Razor clams", tabName = "Razor_clams"),
          menuItem("Brown crabs", tabName = "Brown_crabs"),
          menuItem("Velvet crabs", tabName = "Velvet_crabs"),
          menuItem("Lobsters", tabName = "Lobsters"),
          menuItem("Wrasse", tabName = "Wrasse"),
          menuItem("Vessels and Sampling", tabName = "Vessels_and_Sampling")
        )
      ),
      dashboardBody(
        tabItems(
          tabItem(tabName = "Home", mod_home_ui("home_1")),
          tabItem(tabName = "Nephrops", mod_nephrops_ui("nephrops_1")),
          tabItem(tabName = "Scallops", mod_scallops_ui("scallops_1")),
          tabItem(tabName = "Cockles", mod_cockles_ui("cockles_1")),
          tabItem(tabName = "Razor_clams", mod_razors_ui("razors_1")),
          tabItem(tabName = "Brown_crabs", mod_browncrab_ui("browncrab_1")),
          tabItem(tabName = "Velvet_crabs", mod_velvetcrab_ui("velvetcrab_1")),
          tabItem(tabName = "Lobsters", mod_lobsters_ui("lobsters_1")),
          tabItem(tabName = "Wrasse", mod_wrasse_ui("wrasse_1")),
          tabItem(tabName = "Vessels_and_Sampling", mod_vessels_ui("vessels_1"))
        )
        )
      )
    )
  )
}

#' Add external Resources to the Application
#'
#' This function is internally used to add external
#' resources inside the Shiny application.
#'
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function() {
  add_resource_path(
    "www",
    app_sys("app/www")
  )

  add_resource_path(
    "img",
    system.file("app/img",package='InshoreFisheries')
  )

  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys("app/www"),
      app_title = "InshoreFisheries"
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert()
  )
}
