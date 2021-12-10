## function

# pie chart
piechart <- function(data, title, color){
  ggplot(data, aes(x = "", y = Prop, fill = class)) +
  geom_bar(width = 1, stat = "identity", color = "white") +
  coord_polar("y", start = 0) +
  geom_text(aes(y = lab.ypos, label = Prop), color = "white") + 
  ggtitle(title) + 
  scale_fill_manual(values = color) +
  theme_void()
}

# line chart
linechart <- function(data, variable, title, xaxis){
  ggplot(data = data) + 
    aes(x = variable) + 
    geom_histogram(binwidth = 2,fill="steelblue")+
    labs(title = title, x = xaxis, y = "Frequency")
}