[![](logo_spatialLab.png)](https://spatiallab.cl)

# Introducción al análisis de datos con R para principiantes
## Nivel 4: Generación de reportes con R

_1 al 10 de abril, 2025._

En este repositorio se subirán los contenidos que veremos clase a clase

Docente: _Bastián Olea Herrera._ baolea@uc.cl


## Contenidos

### Clase 1: reportes Quarto

Los apuntes de la clase 1 están en el documento Quarto `quarto_clases/clase_1.qmd`. Se recomienda abrirlo en RStudio y presionar Render para generarlo.

El reporte que creamos durante la clase se llama `quarto_clases/clase_1b.qmd`, y el reporte parametrizado que vimos es `quarto_clases/reporte_parametrizado/reporte_elecciones.qmd`.

- creación de documentos Quarto
- escritura en markdown
- configuración de documentos Quarto
- tablas de contenido
- temas
- disposición de los reportes: columnas, pestañas, contenido en márgenes
- bloques de código
- gráficos en reportes
- reportes parametrizados
- generación en serie de reportes

En la carpeta `quarto_reportes` hay material extra, como un ejemplo de reportes parametrizados con los datos Iris.



### Clase 2: personalización de reportes Quarto
Los apuntes de la clase 2 están en `quarto_clases/clase_2.qmd`, y el documento editado durante la clase en `clase_2b.qmd`.

- agregar imágenes, videos
- bloques de código
- bloques personalizables html
- enlaces a secciones del documento
- insertar símbolos
- modificar apariencia del documento con CSS
- crear clases CSS para dar estilo a partes del documento
- uso de tipografías web
- inclusión de documentos Quarto dentro de otros documentos Quarto
- generación de contenido de documentos Quarto en base a datos
- generación en serie de contenido de documentos Quarto en base a loops o iteraciones
- subir documentos Quarto a GitHub
- compartir documentos Quarto como páginas web con GitHub Pages
- crear sitios web y blogs con Quarto



### Clase 3: aplicaciones Shiny
En `shiny_clases` estarán las apps que vayamos desarrollando. El script `shiny_clases/shiny_app_1.R` es la app realizada en la clase 3.

- componentes de las aplicaciones Shiny: ui, server, global
- principios de las aplicaciones Shiny: reactividad
- convertir un script en una aplicación
- agregar texto a las aplicaciones Shiny
- inputs de las aplicaciones Shiny
- mostrar gráficos (render) en aplicaciones Shiny
- conectar inputs a renderers para controlar gráficos
- personalizar apps Shiny cambiando temas y colores
- elegir paletas de colores para las apps con `{bslib}` 
- diseño de aplicación con `{bslib}` en base a tarjetas (`card()`) y columnas (`layour_columns()`)
- insertar código css para personalizar apariencia de elementos visuales
- aplicar tema de la app a gráficos `ggplot2` con `{thematic}`


### Clase 3: aplicaciones Shiny
El script `shiny_clases/shiny_app_2.R` es la app realizada en la clase 4 y final.

- ejemplos de diseño y disposición de aplicaciones Shiny (scripts de apps en `shiny_clases/apps_ejemplos`)
- pruebas sobre reactividad
- cálculos condicionales en la app
- creación de botones
- textos basados en los datos y que se adaptan mediante condicionalidad
- notificaciones
- ventanas emergentes (modulares)
- publicación de aplicaciones a ShinyApps.io

----

## Recursos de Quarto
- [Guía de Quarto](https://quarto.org/docs/guide/)


## Recursos de Shiny
[Tutorial de Shiny para principiantes](https://bastianolea.rbind.io/blog/r_introduccion/tutorial_shiny_1/)
[Tutorial para subir apps a ShinyApps.io](https://bastianolea.rbind.io/blog/r_introduccion/tutorial_shinyapps/)