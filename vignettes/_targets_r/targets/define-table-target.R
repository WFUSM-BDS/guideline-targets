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
    )
}


tar_target(name = tbl_iris,
           command = tabulate_data_iris(data_iris)
           )
