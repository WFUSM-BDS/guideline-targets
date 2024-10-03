
# Load packages required to define the pipeline:
source("./packages.R")

## Load your R files
lapply(list.files("./R", full.names = TRUE), source)

# Define targets pipeline
list(
  tar_target(
    name = data_iris,
    command = data_load_iris()
  ),

  tar_target(
    name = fig_iris,
    command = plot_fig_iris(data_iris)
  ),
  
  tar_target(name = tbl_iris,
             command = tabulate_data_iris(data_iris)
  ),
  
  
  tar_render(name = report_iris,
             path = 'reports/final_report.Rmd')
)

# Run targets::tar_make() to update the pipeline and create the report 