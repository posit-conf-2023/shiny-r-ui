# Borrowed from https://rstudio.github.io/bslib/reference/value_box.html#bottom-showcase
random_sparkline_plot <- function() {
  timeseries <- cumsum(runif(100, -2, 2))
  x_axis <- seq_along(timeseries)
  x_lim <- c(1, length(timeseries))
  y_lim <- range(timeseries) + c(-2, 0)

  par(mar = c(0, 0, 0, 0))

  # Set up the plot area
  plot(
    timeseries, type = "n",
    axes = FALSE, frame.plot = FALSE,
    ylim = y_lim, xlim = x_lim,
    ylab = "",    xlab = "",
    yaxs = "i",   xaxs = "i",
  )

  # Add the sparkline line
  lines(timeseries, type = "l", pch = NA, col = "#0B538E", lwd = 3)

  # Create polygon coordinates for shading
  polygon_x <- c(1, x_axis, length(timeseries))
  polygon_y <- c(min(y_lim), timeseries, min(y_lim))

  # Add shading under the line
  polygon(polygon_x, polygon_y, col = "#e6f2fd", border = NA)
}

sparkline_plot <- function() {
  bslib::as_fill_item(
    htmltools::plotTag(
      random_sparkline_plot(),
      width = 500,
      height = 125,
      suppressSize = "xy",
      alt = paste(
        "A sparkline plot with a randomly-generated timeseries.",
        "The timeseries starts high and ends low, with lots of variation."
      )
    )
  )
}