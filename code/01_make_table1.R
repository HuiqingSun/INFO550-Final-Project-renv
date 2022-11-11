here::i_am(
  "code/01_make_table1.R"
)


data <- readRDS(
  file = here::here("data/data_clean.rds")
)

library(expss)
library(labelled)
library(gtsummary)

library(plyr)


tab1<- data[order(data$views, decreasing = TRUE),] %>%head(5)%>%
  select(video_title,views)


tab2<-data%>% group_by(topic) %>% 
  dplyr::summarize(sum_views = sum(views),
                   .groups = 'drop')%>%head(5) 

table_one<-cbind(tab1,tab2)



saveRDS(
  table_one,
  file = here::here("output/table_one.rds")
)