here::i_am(
  "code/01_make_table1.R"
)


data <- readRDS(
  file = here::here("data/data_clean.rds")
)

library(expss)
library(labelled)
library(gtsummary)


table_one <- data %>%
  select("Grade","Race","Marital.Status","Estrogen.Status","Status") %>%
  tbl_summary(by = Status) %>%
  modify_spanning_header(c("stat_1", "stat_2") ~ "**Summary**") %>%
  add_overall() %>%
  add_p()


saveRDS(
  table_one,
  file = here::here("output/table_one.rds")
)