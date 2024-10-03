#' Plot scatterplot of sepal width by sepal length colored by species
#'
#' @param data_iris a dataframe of iris data
#' 
#' @return a ggplot object
plot_fig_iris <- function(data_iris) {

  data_iris %>% 
    ggplot(aes(x = Sepal.Width, y = Sepal.Length, color = Species)) +
    geom_point()

}
