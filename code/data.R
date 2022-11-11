
here::i_am(
  "code/data.R"
)

data<-read.csv(
  here::here("data/Breast_Cancer.csv"))

saveRDS(
  data,
  file = here::here("data/data_clean.rds")
)

