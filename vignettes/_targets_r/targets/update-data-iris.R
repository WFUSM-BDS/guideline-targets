data_load_iris <- function() {
  iris %>% 
    arrange(Sepal.Length) %>%
    filter(Species != "versicolor")
}           
