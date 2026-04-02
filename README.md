# Vegetation Change and Climate Signal: Public PhD Code

This repository is a curated public version of the analytical workflows that underpinned my PhD work on vegetation dynamics, phenology, and climate variability across sub-Saharan Africa.

The notebooks are not intended to reproduce the original thesis analyses. The original research relied on large gridded climate products, long satellite time-series, and institution-specific file structures that are not practical to publish as-is. Instead, this repo presents the core analytical logic in a compact, runnable, and transparent form using small sample datasets.

The emphasis is on three things:

- a clear analytical workflow
- readable and well-structured R code
- interpretation that keeps the environmental question in view

## Repository overview

The repository is organised around three themes that sit at the centre of my PhD research:

1. **Observed climate trends**  
   A tidy time-series workflow for annual climate summaries, anomalies, smoothing, and trend estimation.

2. **Vegetation phenology**  
   A compact example showing how vegetation index time-series can be summarised into seasonal metrics such as amplitude, cumulative greenness, and timing of peak growth.

3. **Long-term vegetation change**  
   A spatial trend workflow that mirrors the logic of pixel-wise NDVI analysis using a lightweight gridded sample dataset.

## Repository structure

```text
phd-remote-sensing-portfolio/
├── README.md
├── notebooks/
│   ├── 01_climate_trend_analysis.Rmd
│   ├── 02_vegetation_phenology.Rmd
│   └── 03_long_term_vegetation_trends.Rmd
├── data/
│   ├── climate_timeseries_sample.csv
│   ├── ndvi_monthly_sample.csv
│   ├── vegetation_grid_sample.csv
│   └── README.md
├── R/
│   └── helper_functions.R
├── figures/
├── legacy/
│   └── script_inventory.md
├── legacy_package_inventory.csv
└── legacy_script_inventory.csv
```

## Included notebooks

### 1. Climate trend analysis

This notebook presents a simple but robust workflow for analysing annual climate series. It covers data import, quick quality checks, anomaly calculation, rolling means, linear trend estimation, and concise interpretation.

The public example is intentionally small, but the structure reflects the same type of workflow used in my research on observed climate trends and climate-vegetation relationships.

### 2. Vegetation phenology from a monthly NDVI time-series

This notebook shows how a monthly NDVI-style signal can be smoothed and summarised into annual phenology metrics. The focus is less on complexity and more on making the method visible and reproducible.

The example uses one small site-level dataset, but the logic reflects the broader phenology work in my PhD, where the aim was to understand not only whether vegetation changed, but how the timing and magnitude of seasonal growth responded to climate variability.

### 3. Long-term vegetation trends across a gridded surface

This notebook demonstrates the logic of spatial vegetation trend analysis using a compact gridded table that is converted to a raster object within the workflow. It estimates a linear trend for each grid cell and maps the resulting spatial pattern of change.

This mirrors the type of analysis used in long-term satellite vegetation studies, while remaining lightweight enough to run directly from the repository.

## Why the repository uses sample data

The original PhD analyses were built from large satellite and climate datasets, some of which required substantial preprocessing, local storage, and older package dependencies. For a public GitHub repository, that creates more friction than value.

I therefore rebuilt the workflows around small sample datasets so that the notebooks:

- run quickly
- are easy to read
- demonstrate the analytical approach clearly
- avoid exposing private or institution-specific file structures

## Package versions and legacy code

The source scripts behind the original PhD-era work were written against an older R ecosystem. As part of preparing this repository for public release, the workflows were simplified and updated to use a more modern and maintainable stack where possible.

A few important notes:

- the historical scripts do **not** contain a complete frozen record of package versions
- some older spatial workflows relied on packages that have since been retired or superseded
- this public version therefore prioritises clarity and current reproducibility over exact historical recreation

The most notable migration is from the legacy raster/spatial stack toward current packages such as:

- `terra`
- `dplyr`
- `ggplot2`
- `readr`
- `lubridate`
- `zoo`
- `broom`

If you need strict reproducibility, I recommend using `renv` and creating a project-specific lockfile from your local environment once the notebooks are rendered successfully.

## Intended use

This repository is intended as a public code portfolio. It is designed to show how I approach environmental data analysis problems in R: moving from raw time-series or gridded data to interpretable outputs in a way that is structured, reproducible, and scientifically grounded.

## Related research context

The workflows in this repository draw on the same research themes presented in my MSc and PhD work on:

- vegetation productivity
- vegetation phenology
- climate variability and change
- spatial patterns of environmental change across semi-arid and sub-Saharan African systems

## Reference
Davis-Reddy, C.L. (2018) Assessing vegetation dynamics in response to climate variability and change across sub-Saharan Africa. PhD thesis, Stellenbosch University, South Africa.
