here::i_am(
  "code/02_make_figure1.R"
)

data <- readRDS(
  file = here::here("data/data_clean.rds")
)

library(ggplot2)

fig1<-ggplot(data, aes(x=Race, fill=Status)) + 
  geom_bar(position="dodge") +
  ggtitle("Figure1.Histogram about Patient Status Among Race")+theme(plot.title = element_text(hjust = 0.5))


ggsave(
  here::here("output/fig1.png"),
  plot = fig1,
  device = "png"
)
