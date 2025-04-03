library(quarto)
library(purrr)

# generar un solo reporte
quarto_render(
  input = "iris_params.qmd",
  execute_params = list(
    especie = "setosa"
  )
)


walk(c("virginica", "setosa", "versicolor"), ~{
  quarto_render(
    input = "iris_params.qmd",
    output_file = paste0("iris_params_", .x, ".html"),
    execute_params = list(
      especie = .x
    )
  )
})

