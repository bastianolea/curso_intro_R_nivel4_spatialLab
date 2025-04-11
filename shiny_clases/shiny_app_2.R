library(shiny)
library(bslib)

ui <- page_fluid(
  h1("Prueba"),
  
  layout_columns(
    p("mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho "),
    p(style = css(color = "blue"),
      "texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto "),
  ),
  
  h2("Subtítulo"),
  layout_columns(col_widths = c(4, 8),
                 p("mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho mucho"),
                 
                 layout_columns(style = css(color = "red"),
                   
                   
                   p("poco poco poco poco poco poco poco poco poco poco poco poco poco poco poco poco poco poco poco poco poco poco poco poco "),
                   
                   div(
                     h2("Sub subtítulo"),
                   p("texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto ")
                   )
                 )
  )
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)