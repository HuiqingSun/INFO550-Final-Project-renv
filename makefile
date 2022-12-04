report.html: report.Rmd code/render_report.R data/data_clean.rds output/table_one.rds \
  output/fig1.png output/fig2.png output/fig3.png output/fig4.png output/fig5.png output/fig6.png
	Rscript code/render_report.R
	
data/data_clean.rds: code/data.R data/Breast_Cancer.csv
	Rscript code/data.R
  
output/table_one.rds: code/01_make_table1.R data/data_clean.rds
	Rscript code/01_make_table1.R

output/fig1.png: code/02_make_figure1.R data/data_clean.rds
	Rscript code/02_make_figure1.R

output/fig2.png: code/03_make_figure2.R data/data_clean.rds
	Rscript code/03_make_figure2.R
	
output/fig3.png: code/04_make_figure3.R data/data_clean.rds
	Rscript code/04_make_figure3.R
	
output/fig4.png: code/05_make_figure4.R data/data_clean.rds
	Rscript code/05_make_figure4.R

output/fig5.png: code/06_make_figure5.R data/data_clean.rds
	Rscript code/06_make_figure5.R
	
output/fig6.png: code/07_make_figure6.R data/data_clean.rds
	Rscript code/07_make_figure6.R
	

	
	

.PHONY: clean
clean:
	rm -f output/*.rds && rm -f report.html
	
build:
	docker build -t hqsun/hdp .
	
pull:
	docker pull hqsun/hdp

# rule to run the container
final_report/report.html:
	docker run -v "/$$(pwd)/final_report":/project/final_report hqsun/hdp


	