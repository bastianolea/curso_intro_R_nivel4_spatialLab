library(shiny)
library(bslib)

ui <- page_navbar(
  
  div(style = css(padding = "25px"),
  h1("Pestañas")
  ),
  
  nav_panel("Sección 1",
            
            p("texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto "),
            p("texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto "),
            p("texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto ")
  ),
  
  nav_panel("Sección 2",
            p(rep("gato", times = 200) |> paste(collapse = " "))
  ),
  nav_panel("Sección 3",
            p(rep("hola", times = 200) |> paste(collapse = " "))
  )
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)