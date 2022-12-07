##Saving

#This function has the 'plot_regression' function embedded within it. 
#We must source this function first

source("functions/plotting.r")
#includes 'plot_regression' function

save_reg_png <- function(penguins_culmen_and_mass, filename, size, res, scaling){
  agg_png(filename, width = size, 
          height = size, 
          units = "cm", 
          res = res, 
          scaling = scaling)
  culmen_mass_plot <- plot_regression(penguins_culmen_and_mass)
  print(culmen_mass_plot)
  dev.off()
}

# Save the plot as a svg and define the size and scaling
save_reg_svg <- function(penguins_culmen_and_mass, filename, size, scaling){
  size_inches = size/2.54
  svglite(filename, width = size_inches, height = size_inches, scaling = scaling)
  culmen_mass_plot <- plot_regression(penguins_culmen_and_mass)
  print(culmen_mass_plot)
  dev.off()
}
