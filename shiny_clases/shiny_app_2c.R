library(shiny)
library(bslib)

ui <- page_fluid(
  
  # theme = bs_theme(primary = "red"),
  
  h1("Prueba"),
  
  card(
    p("texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto "),
    p("texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto "),
    p("texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto ")
  ),
  
  navset_card_pill(
    
    nav_panel("🐈",
              h2("Gatitos"),
              p(rep("gato", times = 200) |> paste(collapse = " "))
    ),
    
    nav_panel("🐕",
              p(rep("perro", times = 200) |> paste(collapse = " "))
    ),
    
    nav_panel("🦝",
              p(rep("mapache", times = 200) |> paste(collapse = " "))
    )
    
  )
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)