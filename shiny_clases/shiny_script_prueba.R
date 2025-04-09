# un script común de R que podría ser mejor si fuera una aplicación

library(dplyr)
library(readr)
library(ggplot2)

# carga de datos
datos <- read_csv2("shiny_clases/datos/temperaturas_chile_anuales.csv")

# ver nombres de estaciones
datos |> distinct(nombre) |> print(n=Inf)

# inputs que modifican el gráfico
estacion = "Quinta Normal, Santiago"
estacion = "Pudahuel Santiago"
año_min = 2000
año_min = 1986

# gráfico
datos |> 
  filter(nombre == estacion) |> 
  filter(año >= año_min) |> 
  ggplot() +
  aes(x = año, y = t_max, fill = año) +
  geom_col() +
  theme_minimal() +
  guides(fill = guide_none()) +
  labs(title = estacion)
