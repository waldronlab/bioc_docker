install.packages('BiocManager', repos='https://cran.rstudio.com')

message("Installing from the 'master' branch of Bioconductor")

BiocManager::install(version='devel', update=TRUE, ask=FALSE)

BiocManager::install('devtools')

