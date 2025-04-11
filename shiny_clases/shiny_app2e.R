library(shiny)
library(bslib)

ui <- page_sidebar(fillable = FALSE,
                   
                   
                   sidebar = div(
                     h2("Sección 1"),
                     
                     selectInput("prueba",
                                 label = "Selector",
                                 choices = c(1, 2, 3, 200)),
                     p("texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto "),
                     p("texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto "),
                     p("texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto ")
                   ),
                   
                   card(
                     h3("Sección 2"),
                     p(rep("gato", times = 200) |> paste(collapse = " "))
                   ),
                   card(
                     h3("Sección 3"),
                     p(rep("hola", times = 200) |> paste(collapse = " "))
                   ),
                   
                   card(
                     h3("Sección 4"),
                     p(rep("chao", times = 400) |> paste(collapse = " ")),
                     
                     verbatimTextOutput("selector"),
                     
                     textOutput("monos")
                   )
)

server <- function(input, output, session) {
  
  
  # output$selector <- renderText(input$prueba)
  
  output$selector <- renderText(input$prueba)
  
  output$monos <- renderText({
    rep("💜", times = input$prueba) |> paste(collapse = " ")
    })
  
}

shinyApp(ui, server)