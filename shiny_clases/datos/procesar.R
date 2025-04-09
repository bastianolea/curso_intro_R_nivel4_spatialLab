library(tidyverse)

datos <- readr::read_csv2("datos/temperaturas_chile.csv")

datos_anual <- datos |> 
  group_by(nombre, zona_geografica, año) |> 
  summarize(t_min = mean(t_min, na.rm = T),
            t_max = mean(t_max, na.rm = T)) |> 
  filter(año >= 1980)

datos_anual |> 
  readr::write_csv2("datos/temperaturas_chile_anuales.csv")
