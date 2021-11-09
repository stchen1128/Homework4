# Rule for making report
Info550_project.html: Rmd/Info550_project.Rmd output/hist1.png output/hist2.png output/hist3.png
	Rscript -e "rmarkdown::render('Rmd/Info550_project.Rmd')"
	
# Making figure 1
output/hist1.png: R/histogram1.R 
	Rscript R/histogram1.R
# Making figure 2
output/hist2.png: R/histogram2.R 
	Rscript R/histogram2.R
# Making figure 3
output/hist3.png: R/histogram3.R 
	Rscript R/histogram3.R
	
.PHONY: report