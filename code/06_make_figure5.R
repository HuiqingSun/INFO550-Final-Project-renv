here::i_am(
  "code/06_make_figure5.R"
)

data <- readRDS(
  file = here::here("data/data_clean.rds")
)

library(ggplot2)

fig5<-ggplot(data, aes(x=Age)) + geom_histogram(aes(y = ..density..), binwidth = 3, fill="lightblue")+ geom_density(color="darkblue")+
  ggtitle("Figure5. Distribution of ages of woman with breast cancer")+theme(plot.title = element_text(hjust = 0.5))


ggsave(
  here::here("output/fig5.png"),
  plot = fig5,
  device = "png"
)
