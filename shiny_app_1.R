library(shiny)
library(bslib)

library(dplyr)
library(readr)
library(ggplot2)
library(thematic)


# carga de datos
datos <- read_csv2("datos/temperaturas_chile_anuales.csv")


lista_estaciones <- datos |> distinct(nombre) |> pull()
# datos$nombre |> unique()

color_fondo = "#2D2926"
color_texto = "#ed6f63"
color_primario = "#B14D44"

# color_fondo = "#462F4B"
# color_texto = "#6AC0D0"
# color_primario = "#2A8599"

thematic_shiny()

ui <- page_fluid(
  title = "Prueba",
  
  
  theme = bs_theme(
    bg = color_fondo,
    fg = color_texto,
    primary = color_primario
  ),
  
  # insertar código css para cambiar el estilo
  tags$style("h2 {
  font-size: 140%;
  font-style: italic;
  opacity: 60%;
  }"),
  
  tags$style('.card { overflow: visible !important; }'),
  
  tags$style('.card-body { overflow: visible !important; }'),
  
  
  div(style = "margin-top: 12px;",
      h1("Temperaturas")
  ),
  
  p("Todos los elementos visuales e interactivos"),
  
  div(style = css(font_size = "80%",
                  padding = "8px",
                  background_color = color_primario,
                  color = color_fondo,
                  border_radius = "5px"),
      p(style = "margin-bottom: 0;",
        "Visualización de datos históricos de temperaturas extremas en el país. Los datos fueron obtenidos desde la Dirección General de Aeronáutica Civil, por medio de la plataforma de Datos Abiertos del Estado, y desde la Dirección Meteorológica de Chile mediante web scraping.")
  ),
  
  div(),
  
  
  h2("Visualizador", 
     style = "margin-bottom: 20px; margin-top: 20px;"),
  
  
  
  card(
    card_header("Opciones"), 
    
    
    layout_columns(
      col_widths = c(4, 8),
      
      # selector de estación
      selectInput("estacion",
                  label = "Seleccione una estación meteorológica",
                  choices = lista_estaciones, 
                  selected = "Quinta Normal, Santiago"
      ),
      
      
      sliderInput("año_min",
                  label = "Seleccione un año",
                  min = 1980, max = 2024,
                  value = 1990, sep = "")
      
    )
    
  ),
  
  
  h2("Gráficos"),
  
  # salida del gráfico
  card(
    card_header("Gráfico de barras"), 
    plotOutput("grafico")
  )
  
)



server <- function(input, output, session) {
  # inputs que modifican el gráfico
  
  # gráfico
  output$grafico <- renderPlot(
    
    datos |> 
      filter(nombre == input$estacion) |> 
      filter(año >= input$año_min) |> 
      print() |> 
      ggplot() +
      aes(x = año, y = t_max, fill = año) +
      geom_col() +
      # theme_minimal() +
      guides(fill = guide_none()) +
      labs(title = input$estacion)
  )
  
}



shinyApp(ui, server)