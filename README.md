# info550_hw

For my project, I will analyze the movies and ratings data. The csv files are stored in [Data Directory](https://github.com/stchen1128/info550_hw/tree/master/Data)
Please download these files for running the analysis. 

To start the analysis you will need to install some R packages. The requaired packages ccan be installed using R commands. 
```
installed_pkgs <- row.names(installed.packages())
pkgs <- c("readr", "tidyverse", "ggplot2", "data.table", "reshape2", "lubridate", "ggthemes", "scales" )
for(p in pkgs){
	if(!(p %in% install_pkgs)){
		install.packages(p)
	}
}
```
# Execute the analysis

To execute the analysis, from the project folder you can run 
title: "Simple example"
output:
```
Rscript -e "rmarkdown::render('Info550_project.Rmd')"
```
This will create a html file called R/Info550_project.html that contains the codes, results and graphs.

# Makefile
The makefile include 4 outputs: html report and three pictures of histograms. 
To output each, do :
```
make Info550_project.html
make output/hist1.png
make output/hist2.png
make output/hist3.png
```
To output them all, do: 
```
make 
```

# Restore the package environment 
To keep track of the version of package used in the analysis, do:
```
renv::init()
```
