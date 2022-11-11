here::i_am(
  "code/04_make_figure3.R"
)

data <- readRDS(
  file = here::here("data/data_clean.rds")
)

library(ggplot2,f2)
fig3<-ggplot(data, aes(x=Marital.Status, fill=Status)) + 
  geom_bar(position="dodge") +
  ggtitle("Figure3. Histogram about Patient Status Among Marital Status")+theme(plot.title = element_text(hjust = 0.5))


ggsave(
  here::here("output/fig3.png"),
  plot = fig3,
  device = "png"
)