# Build and install the local package for example data sets to work
devtools::install()

# 1. Install necessary dependencies
deps <- renv::dependencies("./inst/tutorials")$Package
installed <- installed.packages()
to_install <- deps[!(deps %in% installed)]
lapply(to_install, install.packages)

# 2. Get all possible tutorial paths

tutorial_paths <- list.files("inst/tutorials", recursive = TRUE)
tutorial_paths <- tutorial_paths[endsWith(tutorial_paths, ".Rmd")]
tutorial_paths <- tutorial_paths[!is.na(tutorial_paths)]
tutorial_paths <- paste0("inst/tutorials/", tutorial_paths)

for (p in tutorial_paths) {
  print(p)
  rmarkdown::render(p)
}

