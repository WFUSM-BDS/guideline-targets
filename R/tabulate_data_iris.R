#' Create summary report for Iris dataset by species
#'
#' @param data_iris a dataframe of iris data
#' 
#' @return a flextable object
#' 
tabulate_data_iris <- function(data_iris) {
  
    data_iris %>%
      tbl_summary(
        by = Species,
        statistic = all_continuous() ~ c("{mean} ({min}, {max})"),
        label = list(
          Sepal.Length = "Sepal Length",
          Sepal.Width = "Sepal Width",
          Petal.Length = "Petal Length",
          Petal.Width = "Petal Width"
        )
      ) %>%
    as_flex_table()

}
