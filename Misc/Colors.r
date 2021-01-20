library(tidyverse)

x <- 1:100
y <- 1:100
z <- floor(runif(100, min=0, max=5))
simple_df <- data.frame(x = x, y = y, z = z)

ggplot(simple_df, aes(x,y, color = z)) +
  geom_point() +
  #theme_void() +
  scale_color_continuous(labels = c('Four', 'Three', 'Two', 'One', 'Zero')) +
  theme(plot.background = element_rect(fill = 'red',
                                       color = 'yellow'),
        panel.background = element_rect(fill = 'pink',
                                        color = 'blue'),
        #panel.grid = element_line(color = 'green')
        panel.grid.major = element_line(color = 'darkgreen'),
        panel.grid.minor = element_line(color = 'green'),
        panel.grid.minor.x = element_line(color = 'purple'),
        axis.line = element_line(color = 'black',
                                 size = 2),
        axis.text = element_text(color = 'white'),
        legend.background = element_rect(fill = 'cyan',
                                         color = 'orange',
                                         size = 2,
                                         linetype = 'dotted'),
        #legend.key = element_rect(fill = 'yellow',
        #                         color = NA)
  ) +
  labs(title = 'Title',
       subtitle = 'Subtitle',
       caption = 'Caption',
       tag = 'Tag',
       color = 'ColorZ')
