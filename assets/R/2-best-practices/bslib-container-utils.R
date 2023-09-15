describe_layout_function <- function(
  name = NULL,
  description = NULL,
  element = NULL,
  full_screen = FALSE,
  height = NULL,
  ...
) {
  if (!is.null(name)) {
    name <- knitr::combine_words(
      sprintf("<code>%s</code>", name),
      and = " or "
    )
  }

  if (is.null(element)) {
    element <- card_body(
      class = "d-flex flex-column align-items-center",
      div(style = "width: 6em; height: 6em; background-color: gray")
    )
  }

  card(
    height = height,
    ...,
    full_screen = full_screen,
    if (!is.null(name)) {
      card_header(class = "bg-light text-center", HTML(name))
    },
    element,
    if (!is.null(description)) {
      card_footer(class = "bg-white text-center", HTML(description))
    }
  ) 
}