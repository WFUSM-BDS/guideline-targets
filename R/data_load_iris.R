#' Load in iris dataset and sort by Sepal Length
#'
#' @return a dataframe of iris data

data_load_iris <- function() {

  iris %>% 
    arrange(Sepal.Length)

}
