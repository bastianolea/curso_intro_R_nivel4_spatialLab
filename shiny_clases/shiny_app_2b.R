library(shiny)
library(bslib)

ui <- page_fill(
  h1("Prueba"),
  
  
  card(
    p("texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto "),
    p("texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto "),
    p("texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto ")
  ),
  
  
  layout_columns(
    card(
      p("texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto "),
      p("texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto "),
      p("texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto ")
    ),
    card(
      p("texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto "),
      p("texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto "),
      p("texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto ")
    )
  )
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)