library(shiny)
library(bslib)

ui <- page_navbar(
  sidebar = div(
    h2("Sección 1"),
    
    selectInput("prueba",
                label = "Selector",
                choices = c(1, 2, 3, 200)),
    p("texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto "),
    p("texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto "),
    p("texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto ")
  ),
  
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