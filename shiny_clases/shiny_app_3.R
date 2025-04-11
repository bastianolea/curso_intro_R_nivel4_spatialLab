library(shiny)
library(dplyr)
library(bslib)
library(readr)
library(ggplot2)

# reactlog::reactlog_enable()


# setwd("shiny_clases/")
datos <- read_csv2("datos/presidenciales_2021_region.csv")

ui <- page_sidebar(
  sidebar = div(
    h1("Elecciones"),
    br(),
    
    selectInput("region",
                "Filtrar",
                choices = c("País",
                            unique(datos$region))
    ),
    
    
    selectInput("vuelta",
                "Elección",
                choices = c("1era" = "Primera vuelta",
                            "2da" = "Segunda vuelta")
    ),
    
    
    actionButton("boton",
                 "Más información"),
    
    div(style = css(margin_top = "18px"),
    verbatimTextOutput("boton")
    ),
    
    
    actionButton("boton_2",
                 "Más información"),
    
  ),
  
  h3(textOutput("texto_selector")),
  
  
  textOutput("texto_datos"),
  
  plotOutput("grafico_pais")
  
)

server <- function(input, output, session) {
  
  tabla_filtrada <- reactive({
    message("filtrando datos por país o región")
    
    if (input$region == "País") {
      datos
    } else {
      datos |> 
        filter(region == input$region)
    }
    
  })
  
  
  tabla_filtrada_vuelta <- reactive({
    message("filtrando vuelta")
    
    tabla_filtrada() |> 
      filter(eleccion == input$vuelta) |> 
      group_by(candidatura) |> 
      summarize(votos = sum(votos)) |> 
      arrange(desc(votos))
  })
  
  
  output$texto_selector <- renderText({
    message("haciendo título")
    if (input$region == "País") {
      texto <- "Resultados electorales a nivel país"
    } else {
      texto <- "Resultados electorales a nivel regional"
    }
    
  })
  
  
  observeEvent(input$region, {
    
    if (input$region == "País") {
    showNotification("Visualización por país")
    } else if (input$region != "País") {
      showNotification("Visualización por región")
    }
    
  })
  
  observeEvent(input$boton, {
    # showNotification("🐟")
    
    
    showModal(ui = modalDialog(title = "Información",
                               
                               div(
                                 p("texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto ")
                                 ),
                               footer = modalButton("Salir"),
                               )
    )
  })
  
  
  observeEvent(input$boton_2, {
    showNotification("🐟")
    
  })
  
  
  
  output$grafico_pais <- renderPlot({
    message("haciendo gráfico")
    
    # browser()
    # dev.new()
    
    grafico <- tabla_filtrada_vuelta() |> 
      ggplot() +
      aes(x = votos, y = candidatura, fill = votos) +
      geom_col() +
      scale_fill_gradient(low = "blue3", high = "purple") +
      theme_minimal(base_size = 18) +
      scale_x_continuous(expand = expansion(c(0, 0.1)),
                         labels = scales::label_comma(big.mark = ".")) +
      guides(fill = guide_none())
    
    # grafico
    
    if (input$region != "País") {
      grafico <- grafico +
        labs(title = input$region)
    }
    
    return(grafico)
  })
  
  output$boton <- renderText(input$boton)
  

  
  output$texto_datos <- renderText({
    message("creando texto")
    
    ganador <- tabla_filtrada_vuelta() |> 
      slice_max(votos)
    
    introduccion <- ifelse(input$region == "País",
                           "A nivel nacional,",
                           paste("En la región de", input$region)
    )
      
    paste(introduccion, "en", tolower(input$vuelta), "el ganador fue", ganador$candidatura,
          "con", format(ganador$votos, big.mark = "."), "votos.")
    
    # browser()
  })
  
}

shinyApp(ui, server)