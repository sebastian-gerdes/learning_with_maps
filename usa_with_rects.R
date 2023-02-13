# material from:  https://eriqande.github.io/rep-res-web/lectures/making-maps-with-R.html

set.seed(1)
source('usa.R')
library('ggplot2')
gg <- ggplot() + 
  geom_polygon(data = usa, aes(x=long, y = lat), fill = NA, color = "red") + 
  coord_fixed(1.3)
gg

n <- 10
rects <- data.frame(x = runif(n, -120, -80), y = runif(n, 25, 50), width = 1, height = 1)
gg + geom_tile(data = rects, aes(x = x, y = y, width = width, height = height))
