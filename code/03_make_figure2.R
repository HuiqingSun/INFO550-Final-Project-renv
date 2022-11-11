here::i_am(
  "code/03_make_figure2.R"
)

data <- readRDS(
  file = here::here("data/data_clean.rds")
)

library(ggplot2,f2)
fig2<-ggplot(data, aes(x=Age, fill=Status)) + 
  geom_bar(position="dodge") +
  ggtitle("Figure2. Histogram about Patient Status Among Age")+theme(plot.title = element_text(hjust = 0.5))


ggsave(
  here::here("output/fig2.png"),
  plot = fig2,
  device = "png"
)