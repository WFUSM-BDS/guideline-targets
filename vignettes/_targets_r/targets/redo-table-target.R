tabulate_data_iris <- function(data_iris) {
  data_iris %>%
    mutate(Species = str_to_title(Species)) %>%
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

