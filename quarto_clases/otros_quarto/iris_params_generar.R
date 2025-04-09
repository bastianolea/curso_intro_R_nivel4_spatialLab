library(quarto)
library(purrr)

# generar un solo reporte
quarto_render(
  input = "iris_params.qmd",
  execute_params = list(
    especie = "setosa"
  )
)


# generar todos a la vez en html
walk(c("virginica", "setosa", "versicolor"), ~{
  quarto_render(
    input = "quarto_reportes/iris_params.qmd",
    output_file = paste0("iris_params_", .x, ".html"),
    execute_params = list(
      especie = .x
    )
  )
})


# # generar todos a la vez en md para poder insertarlos
# walk(c("virginica", "setosa", "versicolor"), ~{
#   quarto_render(
#     input = "quarto_reportes/iris_params.qmd",
#     # output_format = "md",
#     output_file = paste0("iris_params_", .x, ".md"),
#     execute_params = list(
#       especie = .x
#     )
#   )
# })

