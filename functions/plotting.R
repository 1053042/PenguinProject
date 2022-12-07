##Plotting
#The 'plot_regression' function plots a scatterplot of body mass 
#against culmen length and overlays a linear model
plot_regression <- function(penguins_culmen_and_mass){
  penguins_culmen_and_mass %>% 
    ggplot(aes(x = body_mass_g, y = culmen_length_mm)) +
    geom_point(size = 0.6) +
    geom_smooth(method = "lm", colour = 'purple') + 
    labs(x = "Body Mass (g)",
         y = "Culmen length (mm)") +
    theme_bw()
}
