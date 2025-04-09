library(quarto)
library(dplyr)

# generar un solo reporte
quarto_render(input = "quarto_clases/reporte_parametrizado/reporte_elecciones.qmd",
              execute_params = list(region_elegida = "Valparaíso"))

# cargar los datos para generar reportes en base a un parámetro que viene desde los datos
datos <- readr::read_csv2("quarto_clases/reporte_parametrizado/datos/presidenciales_2021_region.csv")

# todos los valores de la variable parametrizada
regiones <- unique(datos$region)

regiones

library(purrr)

# loop con purrr que genere un documento por cada valor de la variable parametrizada
walk(regiones, ~{
  quarto_render(input = "quarto_clases/reporte_parametrizado/reporte_elecciones.qmd",
                output_file = paste0("reporte_elecciones_", .x, ".html"),
                execute_params = list(region_elegida = .x))
})

# alternativa para el loop
for (region in regiones) {
  quarto_render(input = "reporte_elecciones.qmd",
                output_file = paste0("reporte_elecciones_", region, ".html"),
                execute_params = list(region_elegida = region))
}
