here::i_am(
  "code/05_make_figure4.R"
)

data <- readRDS(
  file = here::here("data/data_clean.rds")
)

library(ggplot2)

fig4<-ggplot(data, aes(x=Estrogen.Status, fill=Status)) + 
  geom_bar(position="dodge") +
  ggtitle("Figure4. Histogram about Patient Status Among Estrogen Status")+theme(plot.title = element_text(hjust = 0.5))


ggsave(
  here::here("output/fig4.png"),
  plot = fig4,
  device = "png"
)
