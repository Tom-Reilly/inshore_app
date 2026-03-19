# Launch the ShinyApp (Do not remove this comment)
# To deploy, run: rsconnect::deployApp()
# Or use the blue button on top of this file

pkgload::load_all(export_all = FALSE,helpers = FALSE,attach_testthat = FALSE)
options( "golem.app.prod" = TRUE)
InshoreFisheries::run_app() # add parameters here (if any)

rsconnect::setAccountInfo(name='scotland',
                          token='62DB2627890EEB21012F9CBA1995C5C5',
                          secret='nuIZhdA1+NCNNur0gmKOHCN5q3XCiRyGuItuRZUD',
                          server="shinyapps.io")
rsconnect::setAccountInfo(name='tr-test-account',
                          token='69B13534B29408ECA6D46BC052455BCC',
                          secret='P32NMpAOOjmKi66RAVQNJlDgXAWqTxbU2R6e14hv')

options(rsconnect.packrat = TRUE)
rsconnect::deployApp()
