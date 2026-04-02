# Helper functions for the public notebook versions

safe_lm_slope <- function(x, time_index) {
  if (all(is.na(x))) return(NA_real_)
  fit <- stats::lm(x ~ time_index)
  unname(stats::coef(fit)[2])
}

yearly_anomaly <- function(x) {
  x - mean(x, na.rm = TRUE)
}

rolling_mean <- function(x, k = 5) {
  zoo::rollmean(x, k = k, fill = NA, align = "center")
}

phenology_summary <- function(df) {
  df |>
    dplyr::summarise(
      max_ndvi = max(ndvi_smooth, na.rm = TRUE),
      min_ndvi = min(ndvi_smooth, na.rm = TRUE),
      amplitude = max_ndvi - min_ndvi,
      peak_month = month[which.max(ndvi_smooth)],
      cumulative_ndvi = sum(ndvi_smooth, na.rm = TRUE)
    )
}