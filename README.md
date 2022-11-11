# INF0 FINAL PROJECT

>Steps about my analysis

------------------------------------------------------------------------

## Describe the contents of my repository

`data`
- The data set I used is stored here.
- The data is from website "https://www.kaggle.com/datasets/reihanenamdari/breast-cancer?select=Breast_Cancer.csv"

`code`
- These are scripts that generate cleaned data, tables and figures.

`output`
- This file contains table and figures generated by R.scripts from `code` file

`report.Rmd`
- This is my analysis code written by RMarkdown, which generates a final `report.html` file.   

`render_report.R` 
- is used for rendering the final report from the command line

### Synchronize project environment

Before starting development, please ensure that your project environment is synchronized with the `renv.lock` file.
You can restor the package environment for your project via `make install`from the command line.
------------------------------------------------------------------------
# Introduction about this project

This project is about to create a R Markdown report mainly about exploring 
* which variables are related to breast cancer
* how exactly they are related to 

------------------------------------------------------------------------
# Table

- Generate codes from `01_make_table1.R` to create summary statistics table.
- This table include alive and dead status in terms of Grade, Race, Marital Status and Estrogen Status using overall number, percentage as well as p values.
------------------------------------------------------------------------

# Figures

1. Create four histograms about patients’ status among 4 interested variables: age, race, marital status and estrogen status (will explore more variables later). 
- Codes are from `02_make_figure1.R` `03_make_figure2.R` `04_make_figure3.R` `05_make_figure4.R`

2. For Figure5, the histogram is generated from `06_make_figure5.R` and suggets that women ages between 45 to 65 are most suffer from Brest Cancer.

3. For Figure6, It shows that patients in Grade 4 stage of breast cancer has bigger sized tumour compair to Grade 1,2 and 3.
- Codes are from `07_make_figure6.R`

- Codes Logic are similar since I use gglot2 package.
- One example for my code:

```r
library(ggplot2)
ggplot(data, aes(x=Race, fill=Status)) + geom_bar(position="dodge") +ggtitle("Figure1.Histogram about Patient Status Among Race")+theme(plot.title = element_text(hjust = 0.5))
```
