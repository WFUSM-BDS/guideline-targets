data_load_iris <- function() {
  iris %>% 
    arrange(Sepal.Length)
}     

tar_target(name = data_iris,
           command = data_load_iris())
