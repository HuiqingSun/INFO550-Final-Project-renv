FROM  rocker/tidyverse


RUN apt-get update && apt-get install -y pandoc

RUN Rscript -e "install.packages('expss')"
RUN Rscript -e "install.packages('config')"
RUN Rscript -e "install.packages('knitr')"
RUN Rscript -e "install.packages('here')"
RUN Rscript -e "install.packages('labelled')"
RUN Rscript -e "install.packages('gtsummary')"
RUN Rscript -e "install.packages('ggplot2')"
RUN Rscript -e "install.packages('rmarkdown')"
RUN Rscript -e "install.packages('dplyr')"
RUN Rscript -e "install.packages('car')"
RUN apt-get install -y --no-install-recommends libxt6



RUN mkdir /project
WORKDIR /project

RUN mkdir output
RUN mkdir data
RUN mkdir code


COPY data data
COPY code code
COPY report.Rmd .
COPY makefile . 


RUN mkdir final_report


CMD make && mv report.html final_report