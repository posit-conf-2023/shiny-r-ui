library(shiny)

atorus_background <- function() {
  tags$svg(
    viewBox="150 20 50 50",
    height="100vh",
    width="100vw",
    opacity="0.5",
    style="display:block;position: absolute;",
    tags$defs(
      tags$linearGradient(
        id="f923dd32-5e31-49b3-b612-5d460212c62e",
        x1="339.5",
        x2="120.56",
        y1="137.11",
        y2="154.7",
        gradientTransform="matrix(1 0 0 -1 -53.57 232.44)",
        gradientUnits="userSpaceOnUse",
        tags$stop(offset="0",`stop-color`="#80cec8"),
        tags$stop(offset=".11",`stop-color`="#92d5d0"),
        tags$stop(offset=".49", `stop-color`="#cdece9"),
        tags$stop(offset=".78",`stop-color`="#f1faf9"),
        tags$stop(offset=".93", `stop-color`="#fff")
      ),
      tags$linearGradient(
        id="b5810299-5dad-4e4e-a77c-cf8a5d18fe8e",
        x1="203.49",
        x2="280.49",
        y1="128.2",
        y2="214.97",
        gradientTransform="matrix(1 0 0 -1 -53.57 232.44)",
        gradientUnits="userSpaceOnUse",
        tags$stop(offset=".15", `stop-color`="#004751"),
        tags$stop(offset=".18", `stop-color`="#0b4f59"),
        tags$stop(offset=".4", `stop-color`="#618d93"),
        tags$stop(offset=".6", `stop-color`="#a5bec1"),
        tags$stop(offset=".76", `stop-color`="#d6e1e3"),
        tags$stop(offset=".88", `stop-color`="#f4f7f7"),
        tags$stop(offset=".95", `stop-color`="#fff"),
      ),
      tags$linearGradient(
        id="eb250056-241d-4c07-a12e-3b8e024dc303",
        x1="57.62",
        x2="330.91",
        y1="250.63",
        y2="128.19",
        gradientTransform="matrix(1 0 0 -1 -53.57 232.44)",
        gradientUnits="userSpaceOnUse",
        tags$stop(offset="0", `stop-color`="#80cec8"),
        tags$stop(offset=".09", `stop-color`="#77c4c0"),
        tags$stop(offset=".23", `stop-color`="#5faba9"),
        tags$stop(offset=".42", `stop-color`="#378184"),
        tags$stop(offset=".63", `stop-color`="#004751"),
        tags$stop(offset=".68", `stop-color`="#095159"),
        tags$stop(offset=".77", `stop-color`="#226b70"),
        tags$stop(offset=".87", `stop-color`="#4a9595"),
        tags$stop(offset="1", `stop-color`="#80cec8")
      ),
      tags$linearGradient(
        id="bbfe46ba-40b6-4781-bb78-aff50963f6dd",
        x1="120.12",
        x2="312.18",
        y1="132.7",
        y2="132.7",
        gradientTransform="matrix(1 0 0 -1 -53.57 232.44)",
        gradientUnits="userSpaceOnUse",
        tags$stop(offset="0",   `stop-color`="#80cec8"),
        tags$stop(offset=".14", `stop-color`="#7ac8c3"),
        tags$stop(offset=".32", `stop-color`="#6ab6b3"),
        tags$stop(offset=".53", `stop-color`="#4e9a9a"),
        tags$stop(offset=".77", `stop-color`="#297277"),
        tags$stop(offset=".98", `stop-color`="#004751")
      )
    ),
    tags$path(
      fill="url(#f923dd32-5e31-49b3-b612-5d460212c62e)",
      d="M92.54 57.21c29.57-34 62.11-20.62 78-10.17 22.05 14.49 31.16 51.05 17 72.84l3-2.26C203 97.13 206.54 65.12 185 37c-19.46-25.4-67.26-38.18-108.4 5.67A69.91 69.91 0 0 0 71.3 49a83.31 83.31 0 0 0 31.24 101.27c-28.88-21.64-34.45-64.94-10-93.06Z"
    ),
    tags$path(
      fill="url(#b5810299-5dad-4e4e-a77c-cf8a5d18fe8e)",
      d="M200.75 107.68c-26.67 31.24-63.88 22.54-78.48 10.23s-30.15-45.56 1.83-70.45c-37.23 19.6-35.47 58.43-15.76 81.54 18.66 21.87 65.66 35.9 108.38-6.77A55.91 55.91 0 0 0 230.51 99a80.22 80.22 0 0 0 1.11-26.72c-4.77-38-35.41-66.67-72.74-71.54C207 12 226.14 77.94 200.75 107.68Z"
    ),
    tags$path(
      fill="url(#eb250056-241d-4c07-a12e-3b8e024dc303)",
      d="M76.65 42.67C117.79-1.18 165.59 11.6 185.05 37c21.4 27.92 18 59.67 5.81 80.18a67.76 67.76 0 0 0 9.89-9.49C226.14 77.94 207 12 158.88.74a87.76 87.76 0 0 0-22.32-.06 86.69 86.69 0 0 0-47.51 21.6A83.66 83.66 0 0 0 71.35 49a69.91 69.91 0 0 1 5.3-6.33Z"
    ),
    tags$path(
      fill="url(#bbfe46ba-40b6-4781-bb78-aff50963f6dd)",
      d="M216.72 122.23C174 164.9 127 150.87 108.34 129c-19.71-23.11-21.47-62 15.76-81.54l-.36.29c.18-.12.36-.25.54-.36 19.13-12 45-5.64 60.1 13.89A48.35 48.35 0 0 0 170.56 47c-15.91-10.45-48.45-23.84-78 10.17a62.86 62.86 0 0 0-13.62 26.42 65.27 65.27 0 0 0 11.78 55c7.38 9.5 17.47 16.12 28.61 20.44a80.5 80.5 0 0 0 29.35 5c38.58 0 72.14-23.15 81.85-65.09-2.81 7.15-8.41 17.91-13.81 23.29Z"
    )
  )
}

ui <- fluidPage(
  tags$head(
    tags$style(
      HTML(
        c(
        ".container-fluid { margin: 0; padding: 0; }",
        ".Reactable { background-color: transparent; }",
        ".off-centered-table { width: 80%; position: absolute; left: 50px; bottom: 50px;"
        )
      )
    )
   ),
  atorus_background(),
  tags$div(
    class="off-centered-table",
    h1("Important Company Table"),
    reactable::reactableOutput("table")
  )
)

server <- function(input, output, session) {
  output$table <- reactable::renderReactable(
    reactable::reactable(mtcars)
  )
}

shinyApp(ui, server)