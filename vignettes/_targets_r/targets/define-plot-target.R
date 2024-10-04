tar_target(name = fig_iris,
           command = data_iris %>% 
             ggplot(aes(x = Sepal.Width, y = Sepal.Length, color = Species)) +
             geom_point()
           )
