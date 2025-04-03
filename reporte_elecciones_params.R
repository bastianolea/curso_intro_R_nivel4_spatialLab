library(quarto)
library(dplyr)

# generar un solo reporte
quarto_render(input = "reporte_elecciones.qmd",
              execute_params = list(region_elegida = "Valparaíso"))





datos <- readr::read_csv2("presidenciales_2021_region.csv")

regiones <- unique(datos$region)

regiones

library(purrr)

# loop con purrr
walk(regiones, ~{
  quarto_render(input = "reporte_elecciones.qmd",
                output_file = paste0("reporte_elecciones_", .x, ".html"),
                execute_params = list(region_elegida = .x))
})

# alternativa para el loop
for (region in regiones) {
  quarto_render(input = "reporte_elecciones.qmd",
                output_file = paste0("reporte_elecciones_", region, ".html"),
                execute_params = list(region_elegida = region))
}
