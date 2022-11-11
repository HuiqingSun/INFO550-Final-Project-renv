here::i_am(
  "code/07_make_figure6.R"
)

data <- readRDS(
  file = here::here("data/data_clean.rds")
)

library(RColorBrewer)
library(ggplot2)
fig6<-ggplot(data, aes(x =Tumor.Size , y = Grade,fill=Grade)) + 
  geom_boxplot()+
  ggtitle("Figure6. Size of the Tumour based on Grade")+theme(plot.title = element_text(hjust = 0.5))


ggsave(
  here::here("output/fig6.png"),
  plot = fig6,
  device = "png"
)